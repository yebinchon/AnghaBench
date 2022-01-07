
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HDC ;


 int BITSPIXEL ;
 int COLORRES ;
 int GetDC (int *) ;
 int GetDeviceCaps (int ,int ) ;
 int ReleaseDC (int *,int ) ;
 scalar_t__ broken (int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_desktop_colorres(void)
{
    HDC hdc = GetDC(((void*)0));
    int bitspixel, colorres;

    bitspixel = GetDeviceCaps(hdc, BITSPIXEL);
    ok(bitspixel != 0, "Expected to get valid BITSPIXEL capability value\n");

    colorres = GetDeviceCaps(hdc, COLORRES);
    ok(colorres != 0 ||
       broken(colorres == 0),
       "Expected to get valid COLORRES capability value\n");

    if (colorres)
    {
        switch (bitspixel)
        {
        case 8:
            ok(colorres == 18,
               "Expected COLORRES to be 18, got %d\n", colorres);
            break;
        case 16:
            ok(colorres == 16,
               "Expected COLORRES to be 16, got %d\n", colorres);
            break;
        case 24:
        case 32:
            ok(colorres == 24,
               "Expected COLORRES to be 24, got %d\n", bitspixel);
            break;
        default:
            ok(0, "Got unknown BITSPIXEL %d with COLORRES %d\n", bitspixel, colorres);
            break;
        }
    }

    ReleaseDC(((void*)0), hdc);
}
