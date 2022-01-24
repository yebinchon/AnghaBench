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
typedef  int /*<<< orphan*/  cd ;
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  UINT ;
typedef  scalar_t__ const INT ;

/* Variables and functions */
#define  ANSI_CHARSET 131 
#define  CP_SYMBOL 130 
 int /*<<< orphan*/  FALSE ; 
#define  RUSSIAN_CHARSET 129 
#define  SYMBOL_CHARSET 128 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (scalar_t__ const,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  pGetGlyphIndicesA ; 
 int /*<<< orphan*/  pGetGlyphIndicesW ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    static struct charset_data
    {
        INT charset;
        UINT code_page;
        WORD font_idxA[128], font_idxW[128];
    } cd[] =
    {
        { ANSI_CHARSET, 1252 },
        { RUSSIAN_CHARSET, 1251 },
        { SYMBOL_CHARSET, CP_SYMBOL } /* keep it as the last one */
    };
    int i;

    if (!pGetGlyphIndicesA || !pGetGlyphIndicesW)
    {
        FUNC5("Skipping the font charset test on a Win9x platform\n");
        return;
    }

    if (!FUNC1("Arial"))
    {
        FUNC4("Arial is not installed\n");
        return;
    }

    for (i = 0; i < sizeof(cd)/sizeof(cd[0]); i++)
    {
        if (cd[i].charset == SYMBOL_CHARSET)
        {
            if (!FUNC1("Symbol") && !FUNC1("Wingdings"))
            {
                FUNC4("Symbol or Wingdings is not installed\n");
                break;
            }
        }
        if (FUNC0(cd[i].charset, cd[i].code_page, cd[i].font_idxA, 128, FALSE) &&
            FUNC0(cd[i].charset, cd[i].code_page, cd[i].font_idxW, 128, TRUE))
            FUNC3(!FUNC2(cd[i].font_idxA, cd[i].font_idxW, 128*sizeof(WORD)), "%d: indices don't match\n", i);
    }

    FUNC3(FUNC2(cd[0].font_idxW, cd[1].font_idxW, 128*sizeof(WORD)), "0 vs 1: indices shouldn't match\n");
    if (i > 2)
    {
        FUNC3(FUNC2(cd[0].font_idxW, cd[2].font_idxW, 128*sizeof(WORD)), "0 vs 2: indices shouldn't match\n");
        FUNC3(FUNC2(cd[1].font_idxW, cd[2].font_idxW, 128*sizeof(WORD)), "1 vs 2: indices shouldn't match\n");
    }
    else
        FUNC4("Symbol or Wingdings is not installed\n");
}