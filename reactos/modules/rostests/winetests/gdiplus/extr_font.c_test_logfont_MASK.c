#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lfa2 ;
typedef  int /*<<< orphan*/  lfa ;
typedef  int Unit ;
typedef  int UINT16 ;
struct TYPE_5__ {scalar_t__ lfHeight; int lfWidth; int lfEscapement; int lfOrientation; int lfWeight; int lfItalic; int lfUnderline; int lfStrikeOut; scalar_t__ lfCharSet; int lfOutPrecision; int lfClipPrecision; int lfQuality; int lfPitchAndFamily; int /*<<< orphan*/  lfFaceName; } ;
typedef  int /*<<< orphan*/  REAL ;
typedef  TYPE_1__ LOGFONTA ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int GpStatus ;
typedef  int /*<<< orphan*/  GpGraphics ;
typedef  int /*<<< orphan*/  GpFontFamily ;
typedef  int /*<<< orphan*/  GpFont ;

/* Variables and functions */
 scalar_t__ ANSI_CHARSET ; 
 int FontStyleItalic ; 
 int /*<<< orphan*/  FontStyleRegular ; 
 int FontStyleStrikeout ; 
 int FontStyleUnderline ; 
 int FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int Ok ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int UnitWorld ; 
 int /*<<< orphan*/  FUNC16 (int,int) ; 
 int /*<<< orphan*/  FUNC17 (double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC20 (int,char*,...) ; 

__attribute__((used)) static void FUNC21(void)
{
    LOGFONTA lfa, lfa2;
    GpFont *font;
    GpFontFamily *family;
    GpStatus stat;
    GpGraphics *graphics;
    HDC hdc = FUNC13(0);
    INT style;
    REAL rval;
    UINT16 em_height, line_spacing;
    Unit unit;

    stat = FUNC1(hdc, &graphics);
    FUNC16(Ok, stat);

    FUNC19(&lfa, 0, sizeof(LOGFONTA));
    FUNC19(&lfa2, 0xff, sizeof(LOGFONTA));
    FUNC18(lfa.lfFaceName, "Tahoma");

    stat = FUNC0(hdc, &lfa, &font);
    FUNC16(Ok, stat);
    stat = FUNC12(font, graphics, &lfa2);
    FUNC16(Ok, stat);

    FUNC20(lfa2.lfHeight < 0, "Expected negative height\n");
    FUNC16(0, lfa2.lfWidth);
    FUNC16(0, lfa2.lfEscapement);
    FUNC16(0, lfa2.lfOrientation);
    FUNC20((lfa2.lfWeight >= 100) && (lfa2.lfWeight <= 900), "Expected weight to be set\n");
    FUNC16(0, lfa2.lfItalic);
    FUNC16(0, lfa2.lfUnderline);
    FUNC16(0, lfa2.lfStrikeOut);
    FUNC20(lfa2.lfCharSet == FUNC14(hdc) || lfa2.lfCharSet == ANSI_CHARSET,
        "Expected %x or %x, got %x\n", FUNC14(hdc), ANSI_CHARSET, lfa2.lfCharSet);
    FUNC16(0, lfa2.lfOutPrecision);
    FUNC16(0, lfa2.lfClipPrecision);
    FUNC16(0, lfa2.lfQuality);
    FUNC16(0, lfa2.lfPitchAndFamily);

    FUNC2(font);

    FUNC19(&lfa, 0, sizeof(LOGFONTA));
    lfa.lfHeight = 25;
    lfa.lfWidth = 25;
    lfa.lfEscapement = lfa.lfOrientation = 50;
    lfa.lfItalic = lfa.lfUnderline = lfa.lfStrikeOut = TRUE;

    FUNC19(&lfa2, 0xff, sizeof(LOGFONTA));
    FUNC18(lfa.lfFaceName, "Tahoma");

    stat = FUNC0(hdc, &lfa, &font);
    FUNC16(Ok, stat);
    stat = FUNC12(font, graphics, &lfa2);
    FUNC16(Ok, stat);

    FUNC20(lfa2.lfHeight < 0, "Expected negative height\n");
    FUNC16(0, lfa2.lfWidth);
    FUNC16(0, lfa2.lfEscapement);
    FUNC16(0, lfa2.lfOrientation);
    FUNC20((lfa2.lfWeight >= 100) && (lfa2.lfWeight <= 900), "Expected weight to be set\n");
    FUNC16(TRUE, lfa2.lfItalic);
    FUNC16(TRUE, lfa2.lfUnderline);
    FUNC16(TRUE, lfa2.lfStrikeOut);
    FUNC20(lfa2.lfCharSet == FUNC14(hdc) || lfa2.lfCharSet == ANSI_CHARSET,
        "Expected %x or %x, got %x\n", FUNC14(hdc), ANSI_CHARSET, lfa2.lfCharSet);
    FUNC16(0, lfa2.lfOutPrecision);
    FUNC16(0, lfa2.lfClipPrecision);
    FUNC16(0, lfa2.lfQuality);
    FUNC16(0, lfa2.lfPitchAndFamily);

    stat = FUNC9(font, &style);
    FUNC16(Ok, stat);
    FUNC20 (style == (FontStyleItalic | FontStyleUnderline | FontStyleStrikeout),
            "Expected , got %d\n", style);

    stat = FUNC10(font, &unit);
    FUNC16(Ok, stat);
    FUNC16(UnitWorld, unit);

    stat = FUNC7(font, graphics, &rval);
    FUNC16(Ok, stat);
    FUNC17(25.347656, rval);
    stat = FUNC8(font, &rval);
    FUNC16(Ok, stat);
    FUNC17(21.0, rval);

    stat = FUNC6(font, &family);
    FUNC16(Ok, stat);
    stat = FUNC5(family, FontStyleRegular, &em_height);
    FUNC16(Ok, stat);
    FUNC16(2048, em_height);
    stat = FUNC11(family, FontStyleRegular, &line_spacing);
    FUNC16(Ok, stat);
    FUNC16(2472, line_spacing);
    FUNC3(family);

    FUNC2(font);

    FUNC19(&lfa, 0, sizeof(lfa));
    lfa.lfHeight = -25;
    FUNC18(lfa.lfFaceName, "Tahoma");
    stat = FUNC0(hdc, &lfa, &font);
    FUNC16(Ok, stat);
    FUNC19(&lfa2, 0xff, sizeof(lfa2));
    stat = FUNC12(font, graphics, &lfa2);
    FUNC16(Ok, stat);
    FUNC16(lfa.lfHeight, lfa2.lfHeight);

    stat = FUNC10(font, &unit);
    FUNC16(Ok, stat);
    FUNC16(UnitWorld, unit);

    stat = FUNC7(font, graphics, &rval);
    FUNC16(Ok, stat);
    FUNC17(30.175781, rval);
    stat = FUNC8(font, &rval);
    FUNC16(Ok, stat);
    FUNC17(25.0, rval);

    stat = FUNC6(font, &family);
    FUNC16(Ok, stat);
    stat = FUNC5(family, FontStyleRegular, &em_height);
    FUNC16(Ok, stat);
    FUNC16(2048, em_height);
    stat = FUNC11(family, FontStyleRegular, &line_spacing);
    FUNC16(Ok, stat);
    FUNC16(2472, line_spacing);
    FUNC3(family);

    FUNC2(font);

    FUNC4(graphics);
    FUNC15(0, hdc);
}