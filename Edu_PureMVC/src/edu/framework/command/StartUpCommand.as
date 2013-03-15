////////////////////////////////////////////////////////////////////////////////
//
//  Copyright (C) 2004-2012 WeMB INC.
//  All Rights Reserved.
//
////////////////////////////////////////////////////////////////////////////////
package edu.framework.command
{
	import edu.framework.mediator.AppMediator;
	
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.command.SimpleCommand;
	
	
	/**
	 * @author jaehag
	 */
	public class StartUpCommand extends SimpleCommand
	{
		public function StartUpCommand()
		{
			super();
		}
		
		override public function execute(notification:INotification):void
		{
			facade.registerMediator(new AppMediator("AppMediator", notification.getBody()));
			
		}
	}
}