package ide.plugins.groups.particles.lifetime {

	import flash.events.Event;
	import flash.geom.Point;
	
	import ide.App;
	import ide.plugins.groups.particles.ParticleLifetimeGroup;
	
	import monkey.core.entities.particles.ParticleSystem;

	/**
	 * lifetime speed x
	 * @author Neil
	 *
	 */
	public class LifetimeSpeedX extends ParticleLifetimeGroup {

		public function LifetimeSpeedX() {
			super("LifetimeSpeedX");
		}

		override protected function onChangeLifetime(e : Event) : void {
			this.data.speedX.datas = new Vector.<Point>();

			for each (var p : Point in this.curve.points) {
				this.data.speedX.datas.push(p.clone());
			}
			this.data.speedX.yValue = this.curve.axisYValue;
			super.onChangeLifetime(e);
		}

		override public function updateGroup(app : App, particle : ParticleSystem) : void {
			super.updateGroup(app, particle);
			this.data = particle.userData.lifetime;
			this.curve.axisYValue = this.data.speedX.yValue;
			this.curve.points = this.data.speedX.datas;
		}

	}
}
