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
typedef  int /*<<< orphan*/  StringTrimming ;
typedef  int /*<<< orphan*/  StringDigitSubstitute ;
typedef  int /*<<< orphan*/  StringAlignment ;
typedef  int /*<<< orphan*/  LANGID ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  GpStringFormat ;
typedef  int /*<<< orphan*/  GpStatus ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HotkeyPrefixNone ; 
 int /*<<< orphan*/  LANG_NEUTRAL ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  StringAlignmentNear ; 
 int /*<<< orphan*/  StringDigitSubstituteUser ; 
 int /*<<< orphan*/  StringTrimmingCharacter ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(void)
{
    GpStringFormat *format;
    GpStatus stat;
    INT n, count;
    StringAlignment align, line_align;
    StringTrimming trimming;
    StringDigitSubstitute digitsub;
    LANGID digitlang;

    stat = FUNC0(0, LANG_NEUTRAL, &format);
    FUNC8(Ok, stat);

    FUNC2(format, &align);
    FUNC5(format, &line_align);
    FUNC4(format, &n);
    FUNC7(format, &trimming);
    FUNC3(format, &digitlang, &digitsub);
    FUNC6(format, &count);

    FUNC8(HotkeyPrefixNone, n);
    FUNC8(StringAlignmentNear, align);
    FUNC8(StringAlignmentNear, line_align);
    FUNC8(StringTrimmingCharacter, trimming);
    FUNC8(StringDigitSubstituteUser, digitsub);
    FUNC8(LANG_NEUTRAL, digitlang);
    FUNC8(0, count);

    stat = FUNC1(format);
    FUNC8(Ok, stat);
}