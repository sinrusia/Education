////////////////////////////////////////////////////////////////////////////////
//
//  Copyright (C) 2004-2012 WeMB INC.
//  All Rights Reserved.
//
////////////////////////////////////////////////////////////////////////////////
package edu.framework.mediator
{
	import flash.events.MouseEvent;
	
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	
	/**
	 * @author jaehag
	 */
	public class AppMediator extends Mediator
	{
		public function AppMediator(mediatorName:String=null, viewComponent:Object=null)
		{
			super(mediatorName, viewComponent);
			
			if(app)
			{
				app.btn.addEventListener(MouseEvent.CLICK, clickTest);
			}
		}
		
		protected function clickTest(event:MouseEvent):void
		{
			trace("버튼이 클릭되었습니다.");
		}
		
		public function get app():Edu_PureMVC{
			return viewComponent as Edu_PureMVC;
		}
		
	}
}