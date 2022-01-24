#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  lf ;
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int UINT ;
struct TYPE_10__ {int ciACP; } ;
struct TYPE_9__ {unsigned int* fsCsb; } ;
struct TYPE_8__ {int lfHeight; int /*<<< orphan*/  lfFaceName; scalar_t__ lfCharSet; } ;
typedef  TYPE_1__ LOGFONTA ;
typedef  scalar_t__ INT_PTR ;
typedef  scalar_t__ INT ;
typedef  scalar_t__ HFONT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  TYPE_2__ FONTSIGNATURE ;
typedef  int DWORD ;
typedef  TYPE_3__ CHARSETINFO ;
typedef  char BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SYMBOL_CHARSET ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  TCI_SRCCHARSET ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC10 (int*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int,char*,...) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,scalar_t__) ; 

__attribute__((used)) static BOOL FUNC21(INT charset, UINT code_page, WORD *idx, UINT count, BOOL unicode)
{
    HDC hdc;
    LOGFONTA lf;
    HFONT hfont, hfont_old;
    CHARSETINFO csi;
    FONTSIGNATURE fs;
    INT cs;
    DWORD i, ret;
    char name[64];

    FUNC11(count <= 128);

    FUNC13(&lf, 0, sizeof(lf));

    lf.lfCharSet = charset;
    lf.lfHeight = 10;
    FUNC12(lf.lfFaceName, "Arial");
    FUNC9(0xdeadbeef);
    hfont = FUNC0(&lf);
    FUNC14(hfont != 0, "CreateFontIndirectA error %u\n", FUNC3());

    hdc = FUNC2(0);
    hfont_old = FUNC8(hdc, hfont);

    cs = FUNC4(hdc, &fs, 0);
    FUNC14(cs == charset, "expected %d, got %d\n", charset, cs);

    FUNC9(0xdeadbeef);
    ret = FUNC5(hdc, sizeof(name), name);
    FUNC14(ret, "GetTextFaceA error %u\n", FUNC3());

    if (charset == SYMBOL_CHARSET)
    {
        FUNC14(FUNC19("Arial", name), "face name should NOT be Arial\n");
        FUNC14(fs.fsCsb[0] & (1u << 31), "symbol encoding should be available\n");
    }
    else
    {
        FUNC14(!FUNC19("Arial", name), "face name should be Arial, not %s\n", name);
        FUNC14(!(fs.fsCsb[0] & (1u << 31)), "symbol encoding should NOT be available\n");
    }

    if (!FUNC10((DWORD *)(INT_PTR)cs, &csi, TCI_SRCCHARSET))
    {
        FUNC20("Can't find codepage for charset %d\n", cs);
        FUNC7(0, hdc);
        return FALSE;
    }
    FUNC14(csi.ciACP == code_page, "expected %d, got %d\n", code_page, csi.ciACP);

    if (&pGdiGetCodePage != NULL && FUNC15(hdc) != code_page)
    {
        FUNC18("Font code page %d, looking for code page %d\n",
             FUNC15(hdc), code_page);
        FUNC7(0, hdc);
        return FALSE;
    }

    if (unicode)
    {
        char ansi_buf[128];
        WCHAR unicode_buf[128];

        for (i = 0; i < count; i++) ansi_buf[i] = (BYTE)(i + 128);

        FUNC6(code_page, 0, ansi_buf, count, unicode_buf, count);

        FUNC9(0xdeadbeef);
        ret = FUNC17(hdc, unicode_buf, count, idx, 0);
        FUNC14(ret == count, "GetGlyphIndicesW expected %d got %d, error %u\n",
           count, ret, FUNC3());
    }
    else
    {
        char ansi_buf[128];

        for (i = 0; i < count; i++) ansi_buf[i] = (BYTE)(i + 128);

        FUNC9(0xdeadbeef);
        ret = FUNC16(hdc, ansi_buf, count, idx, 0);
        FUNC14(ret == count, "GetGlyphIndicesA expected %d got %d, error %u\n",
           count, ret, FUNC3());
    }

    FUNC8(hdc, hfont_old);
    FUNC1(hfont);

    FUNC7(0, hdc);

    return TRUE;
}