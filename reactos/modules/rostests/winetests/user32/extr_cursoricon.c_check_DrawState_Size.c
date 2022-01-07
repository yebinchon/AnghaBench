
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int color ;
typedef int UINT32 ;
typedef int UINT ;
typedef int LPARAM ;
typedef scalar_t__ HICON ;
typedef int HDC ;
typedef int HBRUSH ;
typedef int COLORREF ;
typedef int BOOL ;


 int DST_ICON ;
 int DrawStateA (int ,int ,int *,int ,int ,int,int,int,int,int) ;
 int GetPixel (int ,int,int) ;
 int SetPixelV (int ,int,int,int) ;
 int color_match (int,int) ;
 scalar_t__ create_test_icon (int ,int,int,int,int,int *,int) ;
 int ok (int,char*,int,int ,int,int) ;

__attribute__((used)) static void check_DrawState_Size(HDC hdc, BOOL maskvalue, UINT32 color, int bpp, HBRUSH hbr, UINT flags, int line)
{
    COLORREF result, background;
    BOOL passed[2];
    HICON hicon = create_test_icon(hdc, 1, 1, bpp, maskvalue, &color, sizeof(color));
    background = 0x00FFFFFF;

    SetPixelV(hdc, 0, 0, background);
    SetPixelV(hdc, 2, 2, background);


    DrawStateA(hdc, hbr, ((void*)0), (LPARAM) hicon, 0, 1, 1, 0, 0, (DST_ICON | flags ));

    result = GetPixel(hdc, 0, 0);
    passed[0] = color_match(result, background);
    result = GetPixel(hdc, 2, 2);
    passed[0] = passed[0] & color_match(result, background);
    DrawStateA(hdc, hbr, ((void*)0), (LPARAM) hicon, 0, 1, 1, 2, 2, (DST_ICON | flags ));

    result = GetPixel(hdc, 0, 0);
    passed[1] = color_match(result, background);
    result = GetPixel(hdc, 2, 2);
    passed[1] = passed[0] & color_match(result, background);

    if(!passed[0]&&!passed[1])
        ok (passed[1],
        "DrawState failed to draw a 1x1 Icon in the correct size, independent of the "
        "width and height settings passed to it, for Icon with: Overlaying Mask %d on "
        "Color %06X with flags %08X. Line %d\n",
        maskvalue, color, (DST_ICON | flags), line);
    else if(!passed[1])
        ok (passed[1],
        "DrawState failed to draw a 1x1 Icon in the correct size, if the width and height "
        "parameters passed to it are bigger than the real Icon size, for Icon with: Overlaying "
        "Mask %d on Color %06X with flags %08X. Line %d\n",
        maskvalue, color, (DST_ICON | flags), line);
    else
        ok (passed[0],
        "DrawState failed to draw a 1x1 Icon in the correct size, if the width and height "
        "parameters passed to it are 0, for Icon with: Overlaying Mask %d on "
        "Color %06X with flags %08X. Line %d\n",
        maskvalue, color, (DST_ICON | flags), line);
}
