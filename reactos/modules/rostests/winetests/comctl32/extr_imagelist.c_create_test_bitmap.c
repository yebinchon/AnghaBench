
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_4__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_10; int member_9; int member_8; int member_7; int member_6; int member_5; } ;
struct TYPE_5__ {TYPE_1__ member_0; } ;
typedef int HDC ;
typedef int * HBITMAP ;
typedef int BITMAPINFOHEADER ;
typedef TYPE_2__ BITMAPINFO ;


 int BI_RGB ;
 int * CreateDIBSection (int ,TYPE_2__*,int ,void**,int *,int ) ;
 int DIB_RGB_COLORS ;
 int DeleteObject (int *) ;
 int ok (int,char*) ;

__attribute__((used)) static HBITMAP create_test_bitmap(HDC hdc, int bpp, UINT32 pixel1, UINT32 pixel2)
{
    HBITMAP hBitmap;
    UINT32 *buffer = ((void*)0);
    BITMAPINFO bitmapInfo = {{sizeof(BITMAPINFOHEADER), 2, 1, 1, bpp, BI_RGB,
                                0, 0, 0, 0, 0}};

    hBitmap = CreateDIBSection(hdc, &bitmapInfo, DIB_RGB_COLORS, (void**)&buffer, ((void*)0), 0);
    ok(hBitmap != ((void*)0) && buffer != ((void*)0), "CreateDIBSection failed.\n");

    if(!hBitmap || !buffer)
    {
        DeleteObject(hBitmap);
        return ((void*)0);
    }

    buffer[0] = pixel1;
    buffer[1] = pixel2;

    return hBitmap;
}
