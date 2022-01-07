
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float D3DVALUE ;
typedef float D3DCOLOR ;


 float D3DRMColorGetAlpha (float) ;
 float D3DRMColorGetBlue (float) ;
 float D3DRMColorGetGreen (float) ;
 float D3DRMColorGetRed (float) ;
 float D3DRMCreateColorRGB (float,float,float) ;
 float D3DRMCreateColorRGBA (float,float,float,float) ;
 scalar_t__ admit_error ;
 scalar_t__ fabs (float) ;
 int ok (int,char*,float,float) ;

__attribute__((used)) static void ColorTest(void)
{
    D3DCOLOR color, expected_color, got_color;
    D3DVALUE expected, got, red, green, blue, alpha;


    red=0.8f;
    green=0.3f;
    blue=0.55f;
    expected_color=0xffcc4c8c;
    got_color=D3DRMCreateColorRGB(red,green,blue);
    ok((expected_color==got_color),"Expected color=%x, Got color=%x\n",expected_color,got_color);


    red=0.1f;
    green=0.4f;
    blue=0.7f;
    alpha=0.58f;
    expected_color=0x931966b2;
    got_color=D3DRMCreateColorRGBA(red,green,blue,alpha);
    ok((expected_color==got_color),"Expected color=%x, Got color=%x\n",expected_color,got_color);


    red=-0.88f;
    green=0.4f;
    blue=0.6f;
    alpha=0.41f;
    expected_color=0x68006699;
    got_color=D3DRMCreateColorRGBA(red,green,blue,alpha);
    ok((expected_color==got_color),"Expected color=%x, Got color=%x\n",expected_color,got_color);


    red=2.37f;
    green=0.4f;
    blue=0.6f;
    alpha=0.41f;
    expected_color=0x68ff6699;
    got_color=D3DRMCreateColorRGBA(red,green,blue,alpha);
    ok((expected_color==got_color),"Expected color=%x, Got color=%x\n",expected_color,got_color);


    color=0x0e4921bf;
    expected=14.0f/255.0f;
    got=D3DRMColorGetAlpha(color);
    ok((fabs(expected-got)<admit_error),"Expected=%f, Got=%f\n",expected,got);


    color=0xc82a1455;
    expected=1.0f/3.0f;
    got=D3DRMColorGetBlue(color);
    ok((fabs(expected-got)<admit_error),"Expected=%f, Got=%f\n",expected,got);


    color=0xad971203;
    expected=6.0f/85.0f;
    got=D3DRMColorGetGreen(color);
    ok((fabs(expected-got)<admit_error),"Expected=%f, Got=%f\n",expected,got);


    color=0xb62d7a1c;
    expected=3.0f/17.0f;
    got=D3DRMColorGetRed(color);
    ok((fabs(expected-got)<admit_error),"Expected=%f, Got=%f\n",expected,got);
}
