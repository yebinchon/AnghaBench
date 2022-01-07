
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HDC ;


 int GetDC (int ) ;
 int GetDeviceCaps (int ,int ) ;
 int LOGPIXELSY ;
 int ReleaseDC (int ,int ) ;

__attribute__((used)) static int get_dpiy(void)
{
    HDC hdc;
    int result;

    hdc = GetDC(0);
    result = GetDeviceCaps(hdc, LOGPIXELSY);
    ReleaseDC(0, hdc);

    return result;
}
