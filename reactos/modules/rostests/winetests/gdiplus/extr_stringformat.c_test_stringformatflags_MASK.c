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
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  GpStringFormat ;
typedef  int /*<<< orphan*/  GpStatus ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int InvalidParameter ; 
 int /*<<< orphan*/  LANG_NEUTRAL ; 
 int Ok ; 
 int StringFormatFlagsDirectionRightToLeft ; 
 int StringFormatFlagsDirectionVertical ; 
 int StringFormatFlagsDisplayFormatControl ; 
 int StringFormatFlagsMeasureTrailingSpaces ; 
 int StringFormatFlagsNoFitBlackBox ; 
 int StringFormatFlagsNoFontFallback ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
    GpStringFormat *format;
    GpStatus stat;

    INT flags;

    stat = FUNC0(0, LANG_NEUTRAL, &format);
    FUNC4(Ok, stat);

    /* NULL args */
    stat = FUNC3(NULL, 0);
    FUNC4(InvalidParameter, stat);

    stat = FUNC3(format, 0);
    FUNC4(Ok, stat);
    stat = FUNC2(format, &flags);
    FUNC4(Ok, stat);
    FUNC4(0, flags);

    /* Check some valid flags */
    stat = FUNC3(format, StringFormatFlagsDirectionRightToLeft);
    FUNC4(Ok, stat);
    stat = FUNC2(format, &flags);
    FUNC4(Ok, stat);
    FUNC4(StringFormatFlagsDirectionRightToLeft, flags);

    stat = FUNC3(format, StringFormatFlagsNoFontFallback);
    FUNC4(Ok, stat);
    stat = FUNC2(format, &flags);
    FUNC4(Ok, stat);
    FUNC4(StringFormatFlagsNoFontFallback, flags);

    /* Check some flag combinations */
    stat = FUNC3(format, StringFormatFlagsDirectionVertical
        | StringFormatFlagsNoFitBlackBox);
    FUNC4(Ok, stat);
    stat = FUNC2(format, &flags);
    FUNC4(Ok, stat);
    FUNC4((StringFormatFlagsDirectionVertical
        | StringFormatFlagsNoFitBlackBox), flags);

    stat = FUNC3(format, StringFormatFlagsDisplayFormatControl
        | StringFormatFlagsMeasureTrailingSpaces);
    FUNC4(Ok, stat);
    stat = FUNC2(format, &flags);
    FUNC4(Ok, stat);
    FUNC4((StringFormatFlagsDisplayFormatControl
        | StringFormatFlagsMeasureTrailingSpaces), flags);

    /* Check invalid flags */
    stat = FUNC3(format, 0xdeadbeef);
    FUNC4(Ok, stat);
    stat = FUNC2(format, &flags);
    FUNC4(Ok, stat);
    FUNC4(0xdeadbeef, flags);

    stat = FUNC1(format);
    FUNC4(Ok, stat);
}