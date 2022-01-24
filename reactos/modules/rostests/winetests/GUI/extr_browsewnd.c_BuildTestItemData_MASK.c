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
struct TYPE_3__ {int /*<<< orphan*/  szRunCmd; int /*<<< orphan*/  szName; } ;
typedef  int /*<<< orphan*/  TEST_ITEM ;
typedef  TYPE_1__* PTEST_ITEM ;
typedef  int /*<<< orphan*/  LPWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MAX_PATH ; 
 int /*<<< orphan*/  MAX_RUN_CMD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static PTEST_ITEM
FUNC3(LPWSTR lpName,
                  LPWSTR lpRunCmd)
{
    PTEST_ITEM pItem;

    pItem = (PTEST_ITEM)FUNC1(FUNC0(),
                                  0,
                                  sizeof(TEST_ITEM));
    if (pItem)
    {
        if (lpName)
        {
            FUNC2(pItem->szName, lpName, MAX_PATH);
        }
        if (lpRunCmd)
        {
            FUNC2(pItem->szRunCmd, lpRunCmd, MAX_RUN_CMD);
        }
    }

    return pItem;
}