/**
 * Copyright (C) 2008 Darshan Sawardekar.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
 
package org.puremvc.as3.multicore.utilities.fabrication.routing.firewall {
	import com.anywebcam.mock.Mock;
	
	import org.puremvc.as3.multicore.utilities.fabrication.interfaces.IFirewallRule;
	import org.puremvc.as3.multicore.utilities.fabrication.interfaces.IRouterMessage;	

	/**
	 * @author Darshan Sawardekar
	 */
	public class FirewallRuleMock implements IFirewallRule {

		public var mock:Mock = null;

		public function FirewallRuleMock() {
			mock = new Mock(this);
		}
		
		public function process(notification:String, from:String, to:String, message:IRouterMessage):Boolean {
			return mock.process(notification, from, to, message);
		}
		
		public function dispose():void {
			mock.dispose();
		}
		
	}
}