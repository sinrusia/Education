////////////////////////////////////////////////////////////////////////////////
//
//  Copyright (C) 2004-2012 WeMB INC.
//  All Rights Reserved.
//
////////////////////////////////////////////////////////////////////////////////
package edu.framework
{
	import edu.framework.command.StartUpCommand;
	import edu.framework.mediator.AppMediator;
	
	import org.puremvc.as3.interfaces.IFacade;
	import org.puremvc.as3.patterns.facade.Facade;
	
	
	/**
	 * @author jaehag
	 */
	public class ApplicationFacade extends Facade
	{
		public function ApplicationFacade()
		{
			super();
		}
		
		/**
		 * Facade Singleton Factory method
		 * 
		 * @return the Singleton instance of the Facade
		 */
		public static function getInstance():IFacade 
		{
			if (instance == null) instance = new ApplicationFacade();
			return instance;
		}
		
		override protected function initializeFacade():void
		{
			super.initializeFacade();
			registerCommand("startup", StartUpCommand);
		}
		
	}
}