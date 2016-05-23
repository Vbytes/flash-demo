# vbyte云直播服务 —— web SDK开发指南

* * *
## 1. 概述
vbyte云视频直播解决方案，可帮助用户直接使用经过大规模验证的直播流媒体分发服务。用户可通过SDK中简洁的接口快速同自有应用集成，实现web直播功能。

## 2. 阅读对象
该文档面向考虑使用vbyte云直播服务进行web开发的开发人员，用户需具备一定的flash及web开发基础和经验。

## 3. 功能和特点
| 支持功能       |内容           |
| :------------: | :-----------: |
| 支持平台       | 支持 flash player 10.1 及以上版本 | 
| 支持流媒体格式 | HLS/rtmp/rtsp | 
| 鉴权和认证     |支持通过key进行媒体资源认证,保障用户权益 |

## 4. 使用SDK开发

### 4.1 开发前准备
开始前请您在[vbyte开发者中心][1]注册用户，注册成功后获得一对有效的Access ID/Key/Secret。
请在[vbyte开发者中心][1]建立一个测试直播频道，获取频道ID备用。
### 4.2 克隆此项目

```ssh
git clone https://github.com/Vbytes/flash-demo.git
```

### 4.3 导入SDK
将测试工程导入到Flash Builder中,并使用Flex SDK4.5（flash player 10.1）以上版本进行编译。
运行项目，即可看到直播视频。

### 4.4 集成SDK
集成步骤可参考 demo 项目中的典型用法。

* 修改播放器逻辑，在播放前加载p2p资源库文件:
```actionscript
    var loader:Loader = new Loader();
    loader.contentLoaderInfo.addEventListener(Event.COMPLETE, loadSuccess); 
    loader.load(new URLRequest("http://split.vbyte.cn/sdk/livesdk.swf"));
```
* p2p资源库加载成功后，获取实例liveP2PStream，该实例继承自NetStream，支持 Adobe 原生 NetStream 的全部方法；
* 调用p2pNetStream.play(p2pId)播放，p2pId为步骤4.1中获取的频道ID；

## 5. 技术支持及BUG反馈
对SDK集成及上线使用中发现的问题和意见建议，您可通过联系客服的方式进行反馈，我们的工程师会同您联系。
您也可将bug信息发送至 bug@vbyte.cn
对SDK有新的定制化需求，请与客服进行沟通。

  [1]: http://devcenter.vbyte.cn
  [2]: http://www.vbyte.cn
