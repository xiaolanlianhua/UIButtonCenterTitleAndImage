UIButtonCenterTitleAndImage
=====================

UIButton+CenterImageAndTitle是UIButton的Category，专门用于修改UIButton的图片和文字位置，提供修改图片和文字位置的五种模式：1、图片和文字上下居中，图片在上，文字在下；2、图片和文字左右居中，文字在左，图片在右；3、图片和文字左右居中，图片在左，文字在右；4、文字居中，图片在左边；5、文字居中，图片在右边。


Useage(用法)
============
1、导入#import "UIButton+CenterImageAndTitle.h"
2、直接调用方法
例如：
UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
button1.frame = CGRectMake(60, 80+i*60, kScreenWidth-60*2, 45);
button1.tag = i;
button1.backgroundColor = [UIColor yellowColor];
button1.titleLabel.font = [UIFont systemFontOfSize:15];
[button1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
[button1 setImage:[UIImage imageNamed:@"img_up"] forState:UIControlStateNormal];
[button1 setTitle:@"测试文本" forState:UIControlStateNormal];
[button1 addTarget:self action:@selector(testAction:) forControlEvents:UIControlEventTouchUpInside];
[self.view addSubview:button1];

//上下居中，图片在上，文字在下
[button1 verticalCenterImageAndTitle:10.0f];

//左右居中，文字在左，图片在右
[button1 horizontalCenterTitleAndImage:50.0f];

//左右居中，图片在左，文字在右
[button1 horizontalCenterImageAndTitle:50.0f];

//文字居中，图片在左边
[button1 horizontalCenterTitleAndImageLeft:50.0f];

//文字居中，图片在右边
[button1 horizontalCenterTitleAndImageRight:50.0f];


Contact
=======

- [GitHub](https://github.com/xiaolanlianhua)
- [Email](xiaolanlianhua@gmail.com)


License
=======

UIButtonCenterTitleAndImage is maintained under the MIT license.  **The project itself is free for use in any and all projects.**  You can use UIButtonCenterTitleAndImage in any project, public or private, with or without attribution - though we prefer attribution! It helps us.

Unsure about your rights?  [Read more.](http://opensource.org/licenses/MIT)

Individual credits for included code exist in the header files and documentation. We thank them for their contributions to the open source community.