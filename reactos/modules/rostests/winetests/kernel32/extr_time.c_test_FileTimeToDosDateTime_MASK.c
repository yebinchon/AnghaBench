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
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_3__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ FILETIME ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 

__attribute__((used)) static void FUNC4(void)
{
    FILETIME ft = { 0 };
    WORD fatdate, fattime;
    BOOL ret;

    if (0)
    {
        /* Crashes */
        FUNC0(NULL, NULL, NULL);
    }
    /* Parameter checking */
    FUNC2(0xdeadbeef);
    ret = FUNC0(&ft, NULL, NULL);
    FUNC3(!ret, "expected failure\n");
    FUNC3(FUNC1() == ERROR_INVALID_PARAMETER,
       "expected ERROR_INVALID_PARAMETER, got %d\n", FUNC1());

    FUNC2(0xdeadbeef);
    ret = FUNC0(&ft, &fatdate, NULL);
    FUNC3(!ret, "expected failure\n");
    FUNC3(FUNC1() == ERROR_INVALID_PARAMETER,
       "expected ERROR_INVALID_PARAMETER, got %d\n", FUNC1());

    FUNC2(0xdeadbeef);
    ret = FUNC0(&ft, NULL, &fattime);
    FUNC3(!ret, "expected failure\n");
    FUNC3(FUNC1() == ERROR_INVALID_PARAMETER,
       "expected ERROR_INVALID_PARAMETER, got %d\n", FUNC1());

    FUNC2(0xdeadbeef);
    ret = FUNC0(&ft, &fatdate, &fattime);
    FUNC3(!ret, "expected failure\n");
    FUNC3(FUNC1() == ERROR_INVALID_PARAMETER,
       "expected ERROR_INVALID_PARAMETER, got %d\n", FUNC1());
}