
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int name ;
typedef int lf ;
typedef int WORD ;
typedef int WCHAR ;
typedef int UINT ;
struct TYPE_10__ {int ciACP; } ;
struct TYPE_9__ {unsigned int* fsCsb; } ;
struct TYPE_8__ {int lfHeight; int lfFaceName; scalar_t__ lfCharSet; } ;
typedef TYPE_1__ LOGFONTA ;
typedef scalar_t__ INT_PTR ;
typedef scalar_t__ INT ;
typedef scalar_t__ HFONT ;
typedef int HDC ;
typedef TYPE_2__ FONTSIGNATURE ;
typedef int DWORD ;
typedef TYPE_3__ CHARSETINFO ;
typedef char BYTE ;
typedef scalar_t__ BOOL ;


 scalar_t__ CreateFontIndirectA (TYPE_1__*) ;
 int DeleteObject (scalar_t__) ;
 scalar_t__ FALSE ;
 int GetDC (int ) ;
 int GetLastError () ;
 scalar_t__ GetTextCharsetInfo (int ,TYPE_2__*,int ) ;
 int GetTextFaceA (int ,int,char*) ;
 int MultiByteToWideChar (int,int ,char*,int,int *,int) ;
 int ReleaseDC (int ,int ) ;
 scalar_t__ SYMBOL_CHARSET ;
 scalar_t__ SelectObject (int ,scalar_t__) ;
 int SetLastError (int) ;
 int TCI_SRCCHARSET ;
 scalar_t__ TRUE ;
 int TranslateCharsetInfo (int*,TYPE_3__*,int ) ;
 int assert (int) ;
 int lstrcpyA (int ,char*) ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int,char*,...) ;
 int pGdiGetCodePage (int ) ;
 int pGetGlyphIndicesA (int ,char*,int,int *,int ) ;
 int pGetGlyphIndicesW (int ,int *,int,int *,int ) ;
 int skip (char*,int,int) ;
 int strcmp (char*,char*) ;
 int trace (char*,scalar_t__) ;

__attribute__((used)) static BOOL get_glyph_indices(INT charset, UINT code_page, WORD *idx, UINT count, BOOL unicode)
{
    HDC hdc;
    LOGFONTA lf;
    HFONT hfont, hfont_old;
    CHARSETINFO csi;
    FONTSIGNATURE fs;
    INT cs;
    DWORD i, ret;
    char name[64];

    assert(count <= 128);

    memset(&lf, 0, sizeof(lf));

    lf.lfCharSet = charset;
    lf.lfHeight = 10;
    lstrcpyA(lf.lfFaceName, "Arial");
    SetLastError(0xdeadbeef);
    hfont = CreateFontIndirectA(&lf);
    ok(hfont != 0, "CreateFontIndirectA error %u\n", GetLastError());

    hdc = GetDC(0);
    hfont_old = SelectObject(hdc, hfont);

    cs = GetTextCharsetInfo(hdc, &fs, 0);
    ok(cs == charset, "expected %d, got %d\n", charset, cs);

    SetLastError(0xdeadbeef);
    ret = GetTextFaceA(hdc, sizeof(name), name);
    ok(ret, "GetTextFaceA error %u\n", GetLastError());

    if (charset == SYMBOL_CHARSET)
    {
        ok(strcmp("Arial", name), "face name should NOT be Arial\n");
        ok(fs.fsCsb[0] & (1u << 31), "symbol encoding should be available\n");
    }
    else
    {
        ok(!strcmp("Arial", name), "face name should be Arial, not %s\n", name);
        ok(!(fs.fsCsb[0] & (1u << 31)), "symbol encoding should NOT be available\n");
    }

    if (!TranslateCharsetInfo((DWORD *)(INT_PTR)cs, &csi, TCI_SRCCHARSET))
    {
        trace("Can't find codepage for charset %d\n", cs);
        ReleaseDC(0, hdc);
        return FALSE;
    }
    ok(csi.ciACP == code_page, "expected %d, got %d\n", code_page, csi.ciACP);

    if (pGdiGetCodePage != ((void*)0) && pGdiGetCodePage(hdc) != code_page)
    {
        skip("Font code page %d, looking for code page %d\n",
             pGdiGetCodePage(hdc), code_page);
        ReleaseDC(0, hdc);
        return FALSE;
    }

    if (unicode)
    {
        char ansi_buf[128];
        WCHAR unicode_buf[128];

        for (i = 0; i < count; i++) ansi_buf[i] = (BYTE)(i + 128);

        MultiByteToWideChar(code_page, 0, ansi_buf, count, unicode_buf, count);

        SetLastError(0xdeadbeef);
        ret = pGetGlyphIndicesW(hdc, unicode_buf, count, idx, 0);
        ok(ret == count, "GetGlyphIndicesW expected %d got %d, error %u\n",
           count, ret, GetLastError());
    }
    else
    {
        char ansi_buf[128];

        for (i = 0; i < count; i++) ansi_buf[i] = (BYTE)(i + 128);

        SetLastError(0xdeadbeef);
        ret = pGetGlyphIndicesA(hdc, ansi_buf, count, idx, 0);
        ok(ret == count, "GetGlyphIndicesA expected %d got %d, error %u\n",
           count, ret, GetLastError());
    }

    SelectObject(hdc, hfont_old);
    DeleteObject(hfont);

    ReleaseDC(0, hdc);

    return TRUE;
}
