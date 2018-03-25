package  {
	import flash.display.Sprite;
	import flash.display.MovieClip;
	import flash.display.StageAlign;
	import flash.display.StageQuality;
	import flash.display.StageScaleMode;
	import flash.display.StageDisplayState;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	public class main extends MovieClip {
		
		public function main() {
			if(stage == null) {
				addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			} else {
				onAddedToStage();
				stage.displayState = StageDisplayState.FULL_SCREEN;
			}
		}
		
		private function onAddedToStage(event : Event = null) : void {
			removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			
			stage.align = StageAlign.TOP_LEFT;
			//stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.quality = StageQuality.HIGH;
			stage.frameRate = 30;

			init();
		}

		private function init() : void {
			stage_title();
		}
		
		private function stage_title():void {
			start_btn.addEventListener(MouseEvent.CLICK,function(e:MouseEvent){
				gotoAndPlay(1,"game");   
				stage_game();
			});
		}
		
		private function stage_game():void{
			over_btn.addEventListener(MouseEvent.CLICK,function(e:MouseEvent){
				gotoAndPlay(1,"result");   
				stage_result();
			});
		}
		
		private function stage_result():void{
			again_btn.addEventListener(MouseEvent.CLICK,function(e:MouseEvent){
				gotoAndPlay(1,"title");  
				stage_title();
			});
		}
	}
	
}
