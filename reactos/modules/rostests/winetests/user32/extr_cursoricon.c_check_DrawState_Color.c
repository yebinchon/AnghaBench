
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
 int DrawStateA (int ,int ,int *,int ,int ,int,int,int ,int ,int) ;
 int GetPixel (int ,int,int) ;
 int SetPixelV (int ,int,int,int ) ;
 scalar_t__ broken (scalar_t__) ;
 scalar_t__ color_match (int ,int ) ;
 scalar_t__ create_test_icon (int ,int,int,int,int ,int *,int) ;
 int ok (int,char*,int ,int ,int,int ,int ,int ,int) ;

__attribute__((used)) static void check_DrawState_Color(HDC hdc, BOOL maskvalue, UINT32 color, int bpp, HBRUSH hbr, UINT flags,
                             COLORREF background, COLORREF modern_expected, COLORREF legacy_expected, int line)
{
    COLORREF result;
    HICON hicon = create_test_icon(hdc, 1, 1, bpp, maskvalue, &color, sizeof(color));
    if (!hicon) return;

    SetPixelV(hdc, 1, 1, background);

    DrawStateA(hdc, hbr, ((void*)0), (LPARAM) hicon, 0, 1, 1, 0, 0, ( DST_ICON | flags ));


    result = GetPixel(hdc, 1, 1);

    ok (color_match(result, modern_expected) ||
        broken(color_match(result, legacy_expected)),
        "DrawState drawing Icon with Overlaying Mask %d on Color %06X with flags %08X. "
        "Expected a close match to %06X (modern) or %06X (legacy). Got %06X from line %d\n",
        maskvalue, color, (DST_ICON | flags), modern_expected, legacy_expected, result, line);
}
