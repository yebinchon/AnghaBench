
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lf ;
typedef int UNICODERANGE ;
typedef int UINT ;
struct TYPE_4__ {int lfFaceName; } ;
typedef TYPE_1__ LOGFONTA ;
typedef int IMLangFontLink2 ;
typedef scalar_t__ HRESULT ;
typedef int HFONT ;
typedef int * HDC ;


 int * CreateCompatibleDC (int ) ;
 int CreateFontIndirectA (TYPE_1__*) ;
 int DeleteDC (int *) ;
 int DeleteObject (int ) ;
 scalar_t__ E_FAIL ;
 scalar_t__ E_INVALIDARG ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 scalar_t__ IMLangFontLink2_GetFontUnicodeRanges (int *,int *,int*,int *) ;
 scalar_t__ S_OK ;
 int SelectObject (int *,int ) ;
 int lstrcpyA (int ,char*) ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_GetFontUnicodeRanges(IMLangFontLink2 *font_link)
{
    HRESULT hr;
    UINT count;
    HFONT hfont, old_hfont;
    LOGFONTA lf;
    HDC hdc;
    UNICODERANGE *ur;

    hdc = CreateCompatibleDC(0);
    memset(&lf, 0, sizeof(lf));
    lstrcpyA(lf.lfFaceName, "Arial");
    hfont = CreateFontIndirectA(&lf);
    old_hfont = SelectObject(hdc, hfont);

    count = 0;
    hr = IMLangFontLink2_GetFontUnicodeRanges(font_link, ((void*)0), &count, ((void*)0));
    ok(hr == E_FAIL, "expected E_FAIL, got 0x%08x\n", hr);

    hr = IMLangFontLink2_GetFontUnicodeRanges(font_link, hdc, ((void*)0), ((void*)0));
    ok(hr == E_INVALIDARG, "expected E_FAIL, got 0x%08x\n", hr);

    count = 0;
    hr = IMLangFontLink2_GetFontUnicodeRanges(font_link, hdc, &count, ((void*)0));
    ok(hr == S_OK, "expected S_OK, got 0x%08x\n", hr);
    ok(count, "expected count > 0\n");

    ur = HeapAlloc(GetProcessHeap(), 0, sizeof(*ur) * count);

    hr = IMLangFontLink2_GetFontUnicodeRanges(font_link, hdc, &count, ur);
    ok(hr == S_OK, "expected S_OK, got 0x%08x\n", hr);

    count--;
    hr = IMLangFontLink2_GetFontUnicodeRanges(font_link, hdc, &count, ur);
    ok(hr == S_OK, "expected S_OK, got 0x%08x\n", hr);

    HeapFree(GetProcessHeap(), 0, ur);

    SelectObject(hdc, old_hfont);
    DeleteObject(hfont);
    DeleteDC(hdc);
}
