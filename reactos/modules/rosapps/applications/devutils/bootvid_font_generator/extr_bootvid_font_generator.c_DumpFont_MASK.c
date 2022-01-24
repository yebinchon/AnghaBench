#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int USHORT ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/ * HFONT ;
typedef  int /*<<< orphan*/ * HDC ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  ANSI_CHARSET ; 
 int /*<<< orphan*/  CLIP_DEFAULT_PRECIS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FIXED_PITCH ; 
 int /*<<< orphan*/  FW_NORMAL ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int HEIGHT ; 
 int /*<<< orphan*/  LOGPIXELSY ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NONANTIALIASED_QUALITY ; 
 int /*<<< orphan*/  OUT_DEFAULT_PRECIS ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static void FUNC13(LPSTR FontName, INT FontSize, INT XOffset, INT YOffset)
{
    int iHeight;
    HDC hDC = NULL;
    HFONT hFont = NULL;

    DWORD BmpBits[HEIGHT];
    USHORT c;

    hDC = FUNC0(NULL);
    if (!hDC)
    {
        FUNC11(stderr, "CreateCompatibleDC failed with error %d!\n", FUNC7());
        goto Cleanup;
    }

    iHeight = -FUNC8(FontSize, FUNC6(hDC, LOGPIXELSY), 72);
    hFont = FUNC1(iHeight, 0, 0, 0, FW_NORMAL, FALSE, FALSE, FALSE,
                        ANSI_CHARSET, OUT_DEFAULT_PRECIS, CLIP_DEFAULT_PRECIS,
                        NONANTIALIASED_QUALITY, FIXED_PITCH, FontName);
    if (!hFont)
    {
        FUNC11(stderr, "CreateFont failed with error %d!\n", FUNC7());
        goto Cleanup;
    }

    for (c = 0; c < 256; c++)
    {
        FUNC9(hDC, hFont, XOffset, YOffset, (CHAR)c, BmpBits);

#ifdef DUMP_CHAR_ON_SCREEN
        DumpCharacterOnScreen(BmpBits);
        fprintf(stdout, "\nPress any key to continue...\n");
        _getch();
        system("cls");
#else
        FUNC4(BmpBits);
#endif
    }

Cleanup:
    if (hFont)
        FUNC3(hFont);

    if (hDC)
        FUNC2(hDC);
}