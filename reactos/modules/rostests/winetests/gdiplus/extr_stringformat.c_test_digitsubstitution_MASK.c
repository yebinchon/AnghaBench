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
typedef  int /*<<< orphan*/  StringDigitSubstitute ;
typedef  int /*<<< orphan*/  LANGID ;
typedef  int /*<<< orphan*/  GpStringFormat ;
typedef  int /*<<< orphan*/  GpStatus ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  LANG_CHINESE ; 
 int /*<<< orphan*/  LANG_NEUTRAL ; 
 int /*<<< orphan*/  LANG_RUSSIAN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  SUBLANG_CHINESE_TRADITIONAL ; 
 int /*<<< orphan*/  StringDigitSubstituteNone ; 
 int /*<<< orphan*/  StringDigitSubstituteUser ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void)
{
    GpStringFormat *format;
    GpStatus stat;
    StringDigitSubstitute digitsub;
    LANGID digitlang;

    stat = FUNC0(0, LANG_RUSSIAN, &format);
    FUNC5(Ok, stat);

    /* NULL arguments */
    stat = FUNC2(NULL, NULL, NULL);
    FUNC5(InvalidParameter, stat);
    stat = FUNC2(format, NULL, NULL);
    FUNC5(Ok, stat);
    stat = FUNC2(NULL, &digitlang, NULL);
    FUNC5(InvalidParameter, stat);
    stat = FUNC2(NULL, NULL, &digitsub);
    FUNC5(InvalidParameter, stat);
    stat = FUNC2(NULL, &digitlang, &digitsub);
    FUNC5(InvalidParameter, stat);
    stat = FUNC3(NULL, LANG_NEUTRAL, StringDigitSubstituteNone);
    FUNC5(InvalidParameter, stat);

    /* try to get both and one by one */
    stat = FUNC2(format, &digitlang, &digitsub);
    FUNC5(Ok, stat);
    FUNC5(StringDigitSubstituteUser, digitsub);
    FUNC5(LANG_NEUTRAL, digitlang);

    digitsub  = StringDigitSubstituteNone;
    stat = FUNC2(format, NULL, &digitsub);
    FUNC5(Ok, stat);
    FUNC5(StringDigitSubstituteUser, digitsub);

    digitlang = LANG_RUSSIAN;
    stat = FUNC2(format, &digitlang, NULL);
    FUNC5(Ok, stat);
    FUNC5(LANG_NEUTRAL, digitlang);

    /* set/get */
    stat = FUNC3(format, FUNC4(LANG_CHINESE, SUBLANG_CHINESE_TRADITIONAL),
                                                        StringDigitSubstituteUser);
    FUNC5(Ok, stat);
    digitsub  = StringDigitSubstituteNone;
    digitlang = LANG_RUSSIAN;
    stat = FUNC2(format, &digitlang, &digitsub);
    FUNC5(Ok, stat);
    FUNC5(StringDigitSubstituteUser, digitsub);
    FUNC5(FUNC4(LANG_CHINESE, SUBLANG_CHINESE_TRADITIONAL), digitlang);

    stat = FUNC1(format);
    FUNC5(Ok, stat);
}