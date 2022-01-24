#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lf ;
struct TYPE_11__ {size_t cRanges; TYPE_1__* ranges; } ;
struct TYPE_10__ {int /*<<< orphan*/  lfFaceName; } ;
struct TYPE_9__ {int /*<<< orphan*/  cGlyphs; int /*<<< orphan*/  wcLow; } ;
typedef  TYPE_2__ LOGFONTA ;
typedef  int /*<<< orphan*/  HFONT ;
typedef  int /*<<< orphan*/ * HDC ;
typedef  TYPE_3__ GLYPHSET ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (size_t,char*) ; 
 size_t FUNC11 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static void FUNC14(void)
{
    LOGFONTA lf;
    HDC hdc;
    HFONT hfont, hfont_old;
    DWORD size;
    GLYPHSET *gs;
    DWORD i;

    if (!&pGetFontUnicodeRanges)
    {
        FUNC13("GetFontUnicodeRanges not available before W2K\n");
        return;
    }

    FUNC9(&lf, 0, sizeof(lf));
    FUNC8(lf.lfFaceName, "Arial");
    hfont = FUNC7("Arial", &lf);

    hdc = FUNC1(0);
    hfont_old = FUNC6(hdc, hfont);

    size = FUNC11(NULL, NULL);
    FUNC10(!size, "GetFontUnicodeRanges succeeded unexpectedly\n");

    size = FUNC11(hdc, NULL);
    FUNC10(size, "GetFontUnicodeRanges failed unexpectedly\n");

    gs = FUNC3(FUNC2(), 0, size);

    size = FUNC11(hdc, gs);
    FUNC10(size, "GetFontUnicodeRanges failed\n");

    if (0) /* Disabled to limit console spam */
        for (i = 0; i < gs->cRanges; i++)
            FUNC12("%03d wcLow %04x cGlyphs %u\n", i, gs->ranges[i].wcLow, gs->ranges[i].cGlyphs);
    FUNC12("found %u ranges\n", gs->cRanges);

    FUNC4(FUNC2(), 0, gs);

    FUNC6(hdc, hfont_old);
    FUNC0(hfont);
    FUNC5(NULL, hdc);
}