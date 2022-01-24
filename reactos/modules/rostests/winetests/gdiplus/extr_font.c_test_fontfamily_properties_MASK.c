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
typedef  int UINT16 ;
typedef  scalar_t__ GpStatus ;
typedef  int /*<<< orphan*/  GpFontFamily ;

/* Variables and functions */
 scalar_t__ FontFamilyNotFound ; 
 int /*<<< orphan*/  FontStyleRegular ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  Tahoma ; 
 int /*<<< orphan*/  TimesNewRoman ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9 (void)
{
    GpFontFamily* FontFamily = NULL;
    GpStatus stat;
    UINT16 result = 0;

    stat = FUNC0(Tahoma, NULL, &FontFamily);
    FUNC6(Ok, stat);

    stat = FUNC5(FontFamily, FontStyleRegular, &result);
    FUNC6(Ok, stat);
    FUNC7 (result == 2472, "Expected 2472, got %d\n", result);
    result = 0;
    stat = FUNC4(FontFamily, FontStyleRegular, &result);
    FUNC6(Ok, stat);
    FUNC7(result == 2048, "Expected 2048, got %d\n", result);
    result = 0;
    stat = FUNC2(FontFamily, FontStyleRegular, &result);
    FUNC6(Ok, stat);
    FUNC7(result == 2049, "Expected 2049, got %d\n", result);
    result = 0;
    stat = FUNC3(FontFamily, FontStyleRegular, &result);
    FUNC6(Ok, stat);
    FUNC7(result == 423, "Expected 423, got %d\n", result);
    FUNC1(FontFamily);

    stat = FUNC0(TimesNewRoman, NULL, &FontFamily);
    if(stat == FontFamilyNotFound)
        FUNC8("Times New Roman not installed\n");
    else
    {
        result = 0;
        stat = FUNC5(FontFamily, FontStyleRegular, &result);
        FUNC6(Ok, stat);
        FUNC7(result == 2355, "Expected 2355, got %d\n", result);
        result = 0;
        stat = FUNC4(FontFamily, FontStyleRegular, &result);
        FUNC6(Ok, stat);
        FUNC7(result == 2048, "Expected 2048, got %d\n", result);
        result = 0;
        stat = FUNC2(FontFamily, FontStyleRegular, &result);
        FUNC6(Ok, stat);
        FUNC7(result == 1825, "Expected 1825, got %d\n", result);
        result = 0;
        stat = FUNC3(FontFamily, FontStyleRegular, &result);
        FUNC6(Ok, stat);
        FUNC7(result == 443, "Expected 443 got %d\n", result);
        FUNC1(FontFamily);
    }
}