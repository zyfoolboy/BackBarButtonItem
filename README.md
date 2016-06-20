# 设置BackBarButtonItem为指定图片
iOS7之后，系统可以全局设置返回按钮，并且支持右滑返回上一级页面手势，但是如果想要自定义返回按钮的图片是有点麻烦的。下面介绍一种我个人认为比较简单高效的方法。先上效果图:<br/>
![效果图](https://github.com/zyfoolboy/BackBarButtonItem/blob/master/BackBarButtonItem/BackBarButtonItem/Assets.xcassets/jianshu.dataset/jianshu.gif)<br/>
原理比较简单，由于设置BackBarButtonItem的背景图的时候，BackBarButtonItem的title会显示出来，即使把title设置为空字符串，还有一个箭头仍然会显示出来，好在苹果提供了方法可以设置title偏移，这样只需要把这个title偏移到屏幕之外看不到的地方就可以了。主要代码：
```
UIImage *backButtonImage = [[UIImage imageNamed:@"iconfont-fanhui"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
[[UIBarButtonItem appearance] setBackButtonBackgroundImage:backButtonImage  forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
[[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(0, -backButtonImage.size.height*3) forBarMetrics:UIBarMetricsDefault];
```
在设置图片的时候可能会出现图片拉伸的问题，如图:<br/>
![](https://github.com/zyfoolboy/BackBarButtonItem/blob/master/BackBarButtonItem/BackBarButtonItem/Assets.xcassets/%E5%B1%8F%E5%B9%95%E5%BF%AB%E7%85%A7%202016-06-20%20%E4%B8%8B%E5%8D%8812.39.49.imageset/%E5%B1%8F%E5%B9%95%E5%BF%AB%E7%85%A7%202016-06-20%20%E4%B8%8B%E5%8D%8812.39.49.png)<br/>
解决这个问题可以用到苹果提供的九切片技术(不了解的同学可以网上查一下)，设置图片空白部分为拉伸,返回箭头为原图显示就可以了。<br/>
![](https://github.com/zyfoolboy/BackBarButtonItem/blob/master/BackBarButtonItem/BackBarButtonItem/Assets.xcassets/%E5%B1%8F%E5%B9%95%E5%BF%AB%E7%85%A7%202016-06-20%20%E4%B8%8B%E5%8D%8812.46.38.imageset/%E5%B1%8F%E5%B9%95%E5%BF%AB%E7%85%A7%202016-06-20%20%E4%B8%8B%E5%8D%8812.46.38.png)