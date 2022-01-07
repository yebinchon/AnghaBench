
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int color ;
typedef int UINT32 ;
typedef int HICON ;
typedef int HDC ;
typedef int COLORREF ;
typedef int BOOL ;


 int DrawIcon (int ,int ,int ,int ) ;
 int GetPixel (int ,scalar_t__,scalar_t__) ;
 scalar_t__ GetSystemMetrics (int ) ;
 int SM_CXICON ;
 int SM_CYICON ;
 int SetPixelV (int ,scalar_t__,scalar_t__,int ) ;
 scalar_t__ broken (int ) ;
 int color_match (int ,int ) ;
 int create_test_icon (int ,int,int,int,int ,int *,int) ;
 int ok (int,char*,int ,int ,int ,int ,int,...) ;

__attribute__((used)) static void check_DrawIcon(HDC hdc, BOOL maskvalue, UINT32 color, int bpp, COLORREF background,
                           COLORREF modern_expected, COLORREF legacy_expected, int line)
{
    COLORREF result;
    HICON hicon = create_test_icon(hdc, 1, 1, bpp, maskvalue, &color, sizeof(color));
    if (!hicon) return;
    SetPixelV(hdc, 0, 0, background);
    SetPixelV(hdc, GetSystemMetrics(SM_CXICON)-1, GetSystemMetrics(SM_CYICON)-1, background);
    SetPixelV(hdc, GetSystemMetrics(SM_CXICON), GetSystemMetrics(SM_CYICON), background);
    DrawIcon(hdc, 0, 0, hicon);
    result = GetPixel(hdc, 0, 0);

    ok (color_match(result, modern_expected) ||
        broken(color_match(result, legacy_expected)),
        "Overlaying Mask %d on Color %06X with DrawIcon. "
        "Expected a close match to %06X (modern), or %06X (legacy). Got %06X from line %d\n",
        maskvalue, color, modern_expected, legacy_expected, result, line);

    result = GetPixel(hdc, GetSystemMetrics(SM_CXICON)-1, GetSystemMetrics(SM_CYICON)-1);

    ok (color_match(result, modern_expected) ||
        broken(color_match(result, legacy_expected)),
        "Overlaying Mask %d on Color %06X with DrawIcon. "
        "Expected a close match to %06X (modern), or %06X (legacy). Got %06X from line %d\n",
        maskvalue, color, modern_expected, legacy_expected, result, line);

    result = GetPixel(hdc, GetSystemMetrics(SM_CXICON), GetSystemMetrics(SM_CYICON));

    ok (color_match(result, background),
        "Overlaying Mask %d on Color %06X with DrawIcon. "
        "Expected unchanged background color %06X. Got %06X from line %d\n",
        maskvalue, color, background, result, line);
}
