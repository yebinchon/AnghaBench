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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ Unit ;
typedef  scalar_t__ UINT ;
typedef  int REAL ;
typedef  scalar_t__ GpStatus ;
typedef  int /*<<< orphan*/  GpFontFamily ;
typedef  int /*<<< orphan*/  GpFont ;

/* Variables and functions */
 scalar_t__ FontFamilyNotFound ; 
 int /*<<< orphan*/  FontStyleRegular ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ InvalidParameter ; 
 int LF_FACESIZE ; 
 scalar_t__ Ok ; 
 int /*<<< orphan*/  Tahoma ; 
 scalar_t__ UnitDisplay ; 
 scalar_t__ UnitMillimeter ; 
 scalar_t__ UnitPoint ; 
 scalar_t__ UnitWorld ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nonexistent ; 
 int /*<<< orphan*/  FUNC10 (int,char*,scalar_t__,...) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(void)
{
    GpFontFamily* fontfamily = NULL, *fontfamily2;
    GpFont* font = NULL;
    GpStatus stat;
    Unit unit;
    UINT i;
    REAL size;
    WCHAR familyname[LF_FACESIZE];

    stat = FUNC1(nonexistent, NULL, &fontfamily);
    FUNC8 (FontFamilyNotFound, stat);
    stat = FUNC2(font);
    FUNC8 (InvalidParameter, stat);
    stat = FUNC1(Tahoma, NULL, &fontfamily);
    FUNC8 (Ok, stat);
    stat = FUNC0(fontfamily, 12, FontStyleRegular, UnitPoint, &font);
    FUNC8 (Ok, stat);
    stat = FUNC7 (font, &unit);
    FUNC8 (Ok, stat);
    FUNC8 (UnitPoint, unit);

    stat = FUNC4(font, &fontfamily2);
    FUNC8(Ok, stat);
    stat = FUNC5(fontfamily2, familyname, 0);
    FUNC8(Ok, stat);
    FUNC10 (FUNC9(Tahoma, familyname) == 0, "Expected Tahoma, got %s\n",
            FUNC11(familyname));
    stat = FUNC3(fontfamily2);
    FUNC8(Ok, stat);

    /* Test to see if returned size is based on unit (it's not) */
    FUNC6(font, &size);
    FUNC10 (size == 12, "Expected 12, got %f\n", size);
    FUNC2(font);

    /* Make sure everything is converted correctly for all Units */
    for (i = UnitWorld; i <=UnitMillimeter; i++)
    {
        if (i == UnitDisplay) continue; /* Crashes WindowsXP, wtf? */
        stat = FUNC0(fontfamily, 24, FontStyleRegular, i, &font);
        FUNC8(Ok, stat);
        FUNC6 (font, &size);
        FUNC10 (size == 24, "Expected 24, got %f (with unit: %d)\n", size, i);
        stat = FUNC7 (font, &unit);
        FUNC10 (stat == Ok, "Failed to get font unit, %d.\n", stat);
        FUNC8 (i, unit);
        FUNC2(font);
    }

    FUNC3(fontfamily);
}