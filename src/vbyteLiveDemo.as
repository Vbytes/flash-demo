package{
    import flash.display.Loader;
    import flash.display.Sprite;
    import flash.display.StageScaleMode;
    import flash.events.Event;
    import flash.events.NetStatusEvent;
    import flash.media.Video;
    import flash.net.NetStream;
    import flash.net.URLRequest;
    
    public class vbyteLiveDemo extends Sprite{        
        private var p2pNetStream:NetStream = null;
        
        public function vbyteLiveDemo() { 
            var video:Video = new Video(640, 480); 
            video.smoothing = true; 
            addChild(video); 
            stage.scaleMode = StageScaleMode.NO_SCALE; 
            var loadSuccess:Function = function(e:Event):void { 
                var sdk:Object = e.currentTarget.content; 
                p2pNetStream = sdk.stream;
                p2pNetStream.addEventListener(NetStatusEvent.NET_STATUS, onPlayStatus);
                video.attachNetStream(p2pNetStream);
                p2pNetStream.play("14444578164165791");
            } 
            var loader:Loader = new Loader();
            loader.contentLoaderInfo.addEventListener(Event.COMPLETE, loadSuccess); 
            loader.load(new URLRequest("http://split.vbyte.cn/sdk/superp2p.swf"));
        }
        
        protected function onPlayStatus(e:NetStatusEvent):void { 
            trace("code: " + e.info.code); 
            if(e.info.code == "NetStream.Pause.Notify") {
                // TODO 请在此处进行事件监听处理 
            } 
        }
    }
}
