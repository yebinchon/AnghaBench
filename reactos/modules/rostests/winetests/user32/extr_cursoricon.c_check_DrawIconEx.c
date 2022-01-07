
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int color ;
typedef int UINT32 ;
typedef int UINT ;
typedef int HICON ;
typedef int HDC ;
typedef int COLORREF ;
typedef int BOOL ;


 int DrawIconEx (int ,int ,int ,int ,int,int,int ,int *,int ) ;
 int GetPixel (int ,int ,int ) ;
 int SetPixelV (int ,int ,int ,int ) ;
 scalar_t__ broken (scalar_t__) ;
 scalar_t__ color_match (int ,int ) ;
 int create_test_icon (int ,int,int,int,int ,int *,int) ;
 int ok (int,char*,int ,int ,int ,int ,int ,int ,int) ;

__attribute__((used)) static void check_DrawIconEx(HDC hdc, BOOL maskvalue, UINT32 color, int bpp, UINT flags, COLORREF background,
                             COLORREF modern_expected, COLORREF legacy_expected, int line)
{
    COLORREF result;
    HICON hicon = create_test_icon(hdc, 1, 1, bpp, maskvalue, &color, sizeof(color));
    if (!hicon) return;
    SetPixelV(hdc, 0, 0, background);
    DrawIconEx(hdc, 0, 0, hicon, 1, 1, 0, ((void*)0), flags);
    result = GetPixel(hdc, 0, 0);

    ok (color_match(result, modern_expected) ||
        broken(color_match(result, legacy_expected)),
        "Overlaying Mask %d on Color %06X with DrawIconEx flags %08X. "
        "Expected a close match to %06X (modern) or %06X (legacy). Got %06X from line %d\n",
        maskvalue, color, flags, modern_expected, legacy_expected, result, line);
}
