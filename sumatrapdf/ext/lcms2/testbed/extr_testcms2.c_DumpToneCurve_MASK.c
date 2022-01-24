#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int cmsUInt32Number ;
struct TYPE_3__ {int nEntries; int* Table16; } ;
typedef  TYPE_1__ cmsToneCurve ;
typedef  int /*<<< orphan*/  cmsHANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 

void FUNC8(cmsToneCurve* gamma, const char* FileName)
{
    cmsHANDLE hIT8;
    cmsUInt32Number i;

    hIT8 = FUNC1(FUNC0());

    FUNC6(FUNC0(), hIT8, "NUMBER_OF_FIELDS", 2);
    FUNC6(FUNC0(), hIT8, "NUMBER_OF_SETS", gamma ->nEntries);

    FUNC4(FUNC0(), hIT8, 0, "SAMPLE_ID");
    FUNC4(FUNC0(), hIT8, 1, "VALUE");

    for (i=0; i < gamma ->nEntries; i++) {
        char Val[30];

        FUNC7(Val, "%u", i);
        FUNC5(FUNC0(), hIT8, i, 0, Val);
        FUNC7(Val, "0x%x", gamma ->Table16[i]);
        FUNC5(FUNC0(), hIT8, i, 1, Val);
    }

    FUNC3(FUNC0(), hIT8, FileName);
    FUNC2(FUNC0(), hIT8);
}