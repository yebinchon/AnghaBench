
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bmi ;
struct TYPE_5__ {int biSize; int biBitCount; } ;
struct TYPE_6__ {TYPE_1__ bmiHeader; } ;
typedef int HDC ;
typedef int HBITMAP ;
typedef int BITMAPINFOHEADER ;
typedef TYPE_2__ BITMAPINFO ;


 int CreateCompatibleDC (int ) ;
 int DIB_RGB_COLORS ;
 int DeleteDC (int ) ;
 int GetDIBits (int ,int ,int ,int ,int ,TYPE_2__*,int ) ;
 int SelectObject (int ,int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int ok (int,char*) ;

__attribute__((used)) static int get_color_format(HBITMAP bmp)
{
    BITMAPINFO bmi;
    HDC hdc = CreateCompatibleDC(0);
    HBITMAP hOldBmp = SelectObject(hdc, bmp);
    int ret;

    memset(&bmi, 0, sizeof(bmi));
    bmi.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    ret = GetDIBits(hdc, bmp, 0, 0, 0, &bmi, DIB_RGB_COLORS);
    ok(ret, "GetDIBits failed\n");

    SelectObject(hdc, hOldBmp);
    DeleteDC(hdc);
    return bmi.bmiHeader.biBitCount;
}
