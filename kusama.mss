#include "lambda.h"

/*
　文字列は imgSetCurrent で有効になっているイメージに描画される。
*/
main()
{
	var type, x, y;
	var txt;
	var img, img2;
	var x1,y1,flag1;
	SprSetLevel(9);
	txt = imgCreate(640,480,1,0);
	imgSetCurrent(txt);
	imgFill(31, 31, 31);
	img = imgLoad("kusama.png", 6, 0);
	img2 = imgLoad("kusama1.png", 4, 0);
	x1=0;y1=0;
	imgSetCurrent(img);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x1, y1);
	mosClear();
		sprRenderScreen();
	while(1)
	{
		x1-=1;
		if(x1 > -340){
		imgSetPos(x1, y1);
		}else{
		x1=0;
		}
		timeWait();
		sprRenderScreen();
	}
}