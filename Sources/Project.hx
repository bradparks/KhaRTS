package;

import kha.Framebuffer;
import kha.Scheduler;
import kha.System;
import kha.Assets;
import sdg.Engine;
import sdg.manager.GamePadMan;
import sdg.Sdg;
import screens.PlayScreen;
import sdg.manager.Manager.*;

class Project {
	public function new() {
		Assets.loadEverything(assetsLoaded);
	}

	function assetsLoaded()
	{
		var engine = new Engine(1280, 720);
		engine.enable(KEYBOARD | MOUSE | GAMEPAD | DELTA);

		Sdg.addScreen('Play', new PlayScreen(), true);

		System.notifyOnRender(engine.render);
		Scheduler.addTimeTask(engine.update, 0, 1 / 60);
		
	}
}
