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
typedef  int /*<<< orphan*/  Unit ;
typedef  int REAL ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpFontFamily ;
typedef  int /*<<< orphan*/  GpFont ;

/* Variables and functions */
 int /*<<< orphan*/  FontStyleRegular ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  Tahoma ; 
 int /*<<< orphan*/  UnitDocument ; 
 int /*<<< orphan*/  UnitInch ; 
 int /*<<< orphan*/  UnitMillimeter ; 
 int /*<<< orphan*/  UnitPixel ; 
 int /*<<< orphan*/  UnitPoint ; 
 int /*<<< orphan*/  UnitWorld ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (double,int) ; 

__attribute__((used)) static void FUNC8(void)
{
    GpStatus stat;
    GpFont* font = NULL;
    GpFontFamily* fontfamily = NULL;
    REAL height;
    Unit unit;

    stat = FUNC1(Tahoma, NULL, &fontfamily);
    FUNC6(Ok, stat);

    stat = FUNC0(fontfamily, 30, FontStyleRegular, UnitPixel, &font);
    FUNC6(Ok, stat);

    stat = FUNC4(NULL, 96, &height);
    FUNC6(InvalidParameter, stat);

    stat = FUNC4(font, 96, NULL);
    FUNC6(InvalidParameter, stat);

    stat = FUNC4(font, 96, &height);
    FUNC6(Ok, stat);
    FUNC7(36.210938, height);
    FUNC2(font);

    height = 12345;
    stat = FUNC0(fontfamily, 30, FontStyleRegular, UnitWorld, &font);
    FUNC6(Ok, stat);

    stat = FUNC5(font, &unit);
    FUNC6(Ok, stat);
    FUNC6(UnitWorld, unit);

    stat = FUNC4(font, 96, &height);
    FUNC6(Ok, stat);
    FUNC7(36.210938, height);
    FUNC2(font);

    height = 12345;
    stat = FUNC0(fontfamily, 30, FontStyleRegular, UnitPoint, &font);
    FUNC6(Ok, stat);
    stat = FUNC4(font, 96, &height);
    FUNC6(Ok, stat);
    FUNC7(48.281250, height);
    FUNC2(font);

    height = 12345;
    stat = FUNC0(fontfamily, 30, FontStyleRegular, UnitInch, &font);
    FUNC6(Ok, stat);

    stat = FUNC5(font, &unit);
    FUNC6(Ok, stat);
    FUNC6(UnitInch, unit);

    stat = FUNC4(font, 96, &height);
    FUNC6(Ok, stat);
    FUNC7(3476.250000, height);
    FUNC2(font);

    height = 12345;
    stat = FUNC0(fontfamily, 30, FontStyleRegular, UnitDocument, &font);
    FUNC6(Ok, stat);

    stat = FUNC5(font, &unit);
    FUNC6(Ok, stat);
    FUNC6(UnitDocument, unit);

    stat = FUNC4(font, 96, &height);
    FUNC6(Ok, stat);
    FUNC7(11.587500, height);
    FUNC2(font);

    height = 12345;
    stat = FUNC0(fontfamily, 30, FontStyleRegular, UnitMillimeter, &font);
    FUNC6(Ok, stat);

    stat = FUNC5(font, &unit);
    FUNC6(Ok, stat);
    FUNC6(UnitMillimeter, unit);

    stat = FUNC4(font, 96, &height);
    FUNC6(Ok, stat);
    FUNC7(136.860245, height);
    FUNC2(font);

    FUNC3(fontfamily);
}