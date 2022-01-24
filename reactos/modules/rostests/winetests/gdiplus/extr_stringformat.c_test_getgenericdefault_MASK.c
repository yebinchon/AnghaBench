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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  HotkeyPrefixNone ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  LANG_NEUTRAL ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  StringAlignmentNear ; 
 int /*<<< orphan*/  StringDigitSubstituteUser ; 
 int /*<<< orphan*/  StringFormatFlagsNoWrap ; 
 int /*<<< orphan*/  StringTrimmingCharacter ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,char*) ; 

__attribute__((used)) static void FUNC12(void)
{
    GpStringFormat *format, *format2;
    GpStatus stat;

    INT flags;
    INT n;
    StringAlignment align, line_align;
    StringTrimming trimming;
    StringDigitSubstitute digitsub;
    LANGID digitlang;
    INT tabcount;

    /* NULL arg */
    stat = FUNC9(NULL);
    FUNC10(InvalidParameter, stat);

    stat = FUNC9(&format);
    FUNC10(Ok, stat);

    stat = FUNC9(&format2);
    FUNC10(Ok, stat);
    FUNC11(format == format2, "expected same format object\n");
    stat = FUNC0(format2);
    FUNC10(Ok, stat);

    FUNC3(format, &flags);
    FUNC1(format, &align);
    FUNC5(format, &line_align);
    FUNC4(format, &n);
    FUNC7(format, &trimming);
    FUNC2(format, &digitlang, &digitsub);
    FUNC6(format, &tabcount);

    FUNC10(0, flags);
    FUNC10(HotkeyPrefixNone, n);
    FUNC10(StringAlignmentNear, align);
    FUNC10(StringAlignmentNear, line_align);
    FUNC10(StringTrimmingCharacter, trimming);
    FUNC10(StringDigitSubstituteUser, digitsub);
    FUNC10(LANG_NEUTRAL, digitlang);
    FUNC10(0, tabcount);

    /* Change default format parameters, release, get format object again. */
    stat = FUNC8(format, StringFormatFlagsNoWrap);
    FUNC10(Ok, stat);

    stat = FUNC3(format, &flags);
    FUNC10(Ok, stat);
    FUNC10(StringFormatFlagsNoWrap, flags);

    stat = FUNC0(format);
    FUNC10(Ok, stat);

    stat = FUNC9(&format);
    FUNC10(Ok, stat);

    stat = FUNC3(format, &flags);
    FUNC10(Ok, stat);
    FUNC10(StringFormatFlagsNoWrap, flags);

    stat = FUNC0(format);
    FUNC10(Ok, stat);
}