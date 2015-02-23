package ide.plugins {
	
	import flash.events.Event;
	
	import ide.App;
	
	import monkey.core.base.Object3D;
	import monkey.core.camera.Camera3D;
	import monkey.core.camera.lens.PerspectiveLens;
	import monkey.core.entities.Capsule;
	import monkey.core.entities.Cone;
	import monkey.core.entities.Cube;
	import monkey.core.entities.Cylinder;
	import monkey.core.entities.Plane;
	import monkey.core.entities.Sphere;
	import monkey.core.light.DirectionalLight;
	import monkey.core.light.PointLight;
	import monkey.core.materials.ColorMaterial;
	
	import ui.core.interfaces.IPlugin;
	
	/**
	 * create panel 
	 * @author Neil
	 * 
	 */	
	public class CreatePlugin implements IPlugin {
		
		private var _app : App;
				
		public function CreatePlugin() {
			
		}
		
		public function start():void {
			
		}
				
		public function init(app : App) : void {
			this._app = app;
			this._app.addMenu("Create/Object3D", 	createObject3D);
			this._app.addMenu("Create/Particles",	createParticles);
			this._app.addMenu("Create/Camera3D",	createCamera);
			this._app.addMenu("Create/Cube", 		createCube);
			this._app.addMenu("Create/Capsule", 	createCapsule);
			this._app.addMenu("Create/Cone",		createCone);
			this._app.addMenu("Create/Cylinder",	createCylinder);
			this._app.addMenu("Create/Sphere",		createSphere);
			this._app.addMenu("Create/Plane +xz",	createPlaneXZ);
			this._app.addMenu("Create/Plane +xy",	createPlaneXY);
			this._app.addMenu("Create/Plane +zy",	createPlaneZY);
			this._app.addMenu("Create/Water",		createWater);
			this._app.addMenu("Create/SkyBox",		createSkyBox);
			this._app.addMenu("Create/PointLight",	createPointLight);
			this._app.addMenu("Create/DirecLight",	createDirecLight);
		}
		
		private function createCamera(e : Event) : void {
			var camera : Camera3D = new Camera3D(new PerspectiveLens());
			camera.name = "Camera3D";
			camera.viewPort = this._app.scene.viewPort;
			this._app.scene.addChild(camera);
			this._app.selection.objects = [camera];
		}
		
		private function createDirecLight(e : Event) : void {
			var light : DirectionalLight = new DirectionalLight();
			light.name = "DirectionalLight";
			this._app.scene.addChild(light);
			this._app.selection.objects = [light];
		}
		
		private function createPointLight(e : Event) : void {
			var light : PointLight = new PointLight();
			light.name = "PointLight";
			this._app.scene.addChild(light);
			this._app.selection.objects = [light];
		}
		
		private function createSkyBox(e : Event) : void {
			
		}
		
		private function createWater(e : Event) : void {
			
		}
		
		private function createParticles(e : Event) : void {
			
		}
		
		private function createSphere(e : Event) : void {
			var obj : Object3D = new Object3D();
			obj.name = "Sphere"
			obj.addComponent(new Sphere());
			obj.addComponent(new ColorMaterial(0x777777));
			this._app.scene.addChild(obj);
			this._app.selection.objects = [obj];
		}
				
		private function createPlaneZY(e : Event) : void {
			var obj : Object3D = new Object3D();
			obj.name = "Plane"
			obj.addComponent(new Plane(10, 10, 1, "+yz"));
			obj.addComponent(new ColorMaterial(0x777777));
			this._app.scene.addChild(obj);
			this._app.selection.objects = [obj];
		}
		
		private function createPlaneXY(e : Event) : void {
			var obj : Object3D = new Object3D();
			obj.name = "Plane"
			obj.addComponent(new Plane(10, 10, 1, "+xy"));
			obj.addComponent(new ColorMaterial(0x777777));
			this._app.scene.addChild(obj);
			this._app.selection.objects = [obj];
		}
		
		private function createPlaneXZ(e : Event) : void {
			var obj : Object3D = new Object3D();
			obj.name = "Plane";
			obj.addComponent(new Plane(10, 10, 1, "+xz"));
			obj.addComponent(new ColorMaterial(0x777777));
			this._app.scene.addChild(obj);
			this._app.selection.objects = [obj];
		}
		
		private function createCylinder(e : Event) : void {
			var obj : Object3D = new Object3D();
			obj.name = "Cylinder";
			obj.addComponent(new Cylinder());
			obj.addComponent(new ColorMaterial(0x777777));
			this._app.scene.addChild(obj);
			this._app.selection.objects = [obj];
		}
		
		private function createCone(e : Event) : void {
			var obj : Object3D = new Object3D();
			obj.name = "Cone";
			obj.addComponent(new Cone());
			obj.addComponent(new ColorMaterial(0x777777));
			this._app.scene.addChild(obj);
			this._app.selection.objects = [obj];
		}
		
		private function createCapsule(e : Event) : void {
			var obj : Object3D = new Object3D();
			obj.name = "Capsule";
			obj.addComponent(new Capsule());
			obj.addComponent(new ColorMaterial(0x777777));
			this._app.scene.addChild(obj);
			this._app.selection.objects = [obj];
		}
		
		private function createCube(e : Event) : void {
			var obj : Object3D = new Object3D();
			obj.name = "Cube";
			obj.addComponent(new Cube());
			obj.addComponent(new ColorMaterial(0x777777));
			this._app.scene.addChild(obj);
			this._app.selection.objects = [obj];
		}
				
		private function createObject3D(e : Event) : void {
			var obj : Object3D = new Object3D();
			obj.name = "Object3D";
			this._app.scene.addChild(obj);
			this._app.selection.objects = [obj];
		}
	}

//		private function createDirectionLight(e : MouseEvent) : void {
//			var light : DirectionalLight = new DirectionalLight();
//			light.name = "DirectionalLight";
//			this._app.scene.addChild(light);
//		}
//		
//		private function createSkybox(e : MouseEvent) : void {
//			var sky : SkyBox = new SkyBox(Device3D.nullBitmapData.clone(), 1000, 0.8);
//			this._app.scene.addChild(sky);
//			setTimeout(function():void{
//				_app.selection.objects = [sky];
//			}, 10);	
//		}
//		
//		private function createWater(e : MouseEvent) : void {
//			var water : Water = new Water(new Texture3D(null, false, 0, Texture3D.TYPE_CUBE), new Texture3D(), 3000, 3000, 32);
//			this._app.scene.addChild(water);
//			setTimeout(function():void{
//				_app.selection.objects = [water];
//			}, 10);	
//		}
//		
//		private function createYZPlane(e : MouseEvent) : void {
//			var plane : Plane = new Plane("plane", 10, 10, 1, null, "+yz");
//			this._app.scene.addChild(plane);
//			setTimeout(function():void{
//				_app.selection.objects = [plane];
//			}, 10);	
//		}
//		
//		private function createXYPlane(e : MouseEvent) : void {
//			var plane : Plane = new Plane("plane", 10, 10, 1, null, "+xy");
//			this._app.scene.addChild(plane);
//			setTimeout(function():void{
//				_app.selection.objects = [plane];
//			}, 10);	
//		}
//		
//		private function createCamera(e : MouseEvent) : void {
//			var camera : Camera3D = new Camera3D(new PerspectiveLens());
//			camera.viewPort = _app.scene.viewPort;
//			this._app.scene.addChild(camera);
//			setTimeout(function():void{
//				_app.selection.objects = [camera];
//			}, 10);			
//		}
//		
//		private function createPointLight(e : MouseEvent) : void {
//			var light : PointLight = new PointLight();
//			light.name = "PointLight";
//			this._app.scene.addChild(light);
//		}
//   	
//		private function createSphere(e : MouseEvent) : void {
//			var sphere : Sphere = new Sphere("sphere", 5, 15);
//			this._app.scene.addChild(sphere);
//			setTimeout(function():void{
//				_app.selection.objects = [sphere];
//			}, 10);	
//		}
//		
//		private function createXZPlane(e : MouseEvent) : void {
//			var plane : Plane = new Plane("plane", 10, 10, 1, null, "+xz");
//			this._app.scene.addChild(plane);
//			setTimeout(function():void{
//				_app.selection.objects = [plane];
//			}, 10);	
//		}
//		
//		private function createCylinder(e : MouseEvent) : void {
//			var cylinder : Cylinder = new Cylinder("cylinder");
//			this._app.scene.addChild(cylinder);
//			setTimeout(function():void{
//				_app.selection.objects = [cylinder];
//			}, 10);	
//		}
//		
//		private function createCone(e : MouseEvent) : void {
//			var cone : Cone = new Cone("cone");
//			this._app.scene.addChild(cone);
//			setTimeout(function():void{
//				_app.selection.objects = [cone];
//			}, 10);	
//		}
//		
//		private function createPivot(e : MouseEvent) : void {
//			var pivot : Pivot3D = new Pivot3D("pivot");
//			this._app.scene.addChild(pivot);
//			setTimeout(function():void{
//				_app.selection.objects = [pivot];
//			}, 10);	
//		}
//		
//		private function createCube(e : MouseEvent) : void {
//			var cube : Cube = new Cube("cube");
//			this._app.scene.addChild(cube);
//			setTimeout(function():void{
//				_app.selection.objects = [cube];
//			}, 10);	
//		}
//		
//		private function createCapsule(e : MouseEvent) : void {
//			var capsule : Capsule = new Capsule("capsule");
//			this._app.scene.addChild(capsule);
//			setTimeout(function():void{
//				_app.selection.objects = [capsule];
//			}, 10);	
//		}
}
