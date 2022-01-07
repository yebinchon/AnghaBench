
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG ;
typedef int HDC ;


 int GetDC (int ) ;
 int GetDeviceCaps (int ,int ) ;
 int LOGPIXELSY ;
 int ReleaseDC (int ,int ) ;
 int skip (char*,int) ;
 int test_ifont_size (int,int,int,int,char*) ;

__attribute__((used)) static void test_ifont_sizes(void)
{




  HDC hdc = GetDC(0);
  LONG dpi = GetDeviceCaps(hdc, LOGPIXELSY);
  ReleaseDC(0, hdc);
  if(dpi == 96)
  {
    test_ifont_size(180000, 0, 0, -24, "default");
    test_ifont_size(186000, 0, 0, -25, "rounding");
  } else if(dpi == 72)
  {
    test_ifont_size(180000, 0, 0, -18, "default");
    test_ifont_size(186000, 0, 0, -19, "rounding");
  } else if(dpi == 120)
  {
    test_ifont_size(180000, 0, 0, -30, "default");
    test_ifont_size(186000, 0, 0, -31, "rounding");
  } else
    skip("Skipping resolution dependent font size tests - display resolution is %d\n", dpi);


    test_ifont_size(180000, 72, 2540, -18, "ratio1");
    test_ifont_size(180000, 144, 2540, -36, "ratio2");
    test_ifont_size(180000, 72, 1270, -36, "ratio3");
    test_ifont_size(186000, 72, 2540, -19, "rounding+ratio");


    test_ifont_size(180000, 10, 10, -635, "identical ratio 1");
    test_ifont_size(240000, 10, 10, -848, "identical ratio 2");
    test_ifont_size(300000, 10, 10, -1058, "identical ratio 3");


    test_ifont_size(180000, 1, 1, -24, "1:1 ratio 1");
    test_ifont_size(240000, 1, 1, -32, "1:1 ratio 2");
    test_ifont_size(300000, 1, 1, -40, "1:1 ratio 3");


    test_ifont_size(180000, 1, 0, -24, "1:0 ratio 1");
    test_ifont_size(240000, 1, 0, -32, "1:0 ratio 2");
    test_ifont_size(300000, 1, 0, -40, "1:0 ratio 3");


    test_ifont_size(180000, 0, 1, -24, "0:1 ratio 1");
    test_ifont_size(240000, 0, 1, -32, "0:1 ratio 2");
    test_ifont_size(300000, 0, 1, -40, "0:1 ratio 3");


    test_ifont_size(180000, 2, 1, -1270, "2:1 ratio 1");
    test_ifont_size(240000, 2, 1, -1694, "2:1 ratio 2");
    test_ifont_size(300000, 2, 1, -2117, "2:1 ratio 3");


    test_ifont_size(180000, 1, 2, -318, "1:2 ratio 1");
    test_ifont_size(240000, 1, 2, -424, "1:2 ratio 2");
    test_ifont_size(300000, 1, 2, -529, "1:2 ratio 3");


    test_ifont_size(180000, 2, 2, -635, "2:2 ratio 1");
    test_ifont_size(240000, 2, 2, -848, "2:2 ratio 2");
    test_ifont_size(300000, 2, 2, -1058, "2:2 ratio 3");
}
