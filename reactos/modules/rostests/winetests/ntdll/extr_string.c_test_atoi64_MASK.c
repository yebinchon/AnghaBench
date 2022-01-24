#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int overflow; scalar_t__ value; int /*<<< orphan*/  str; } ;
typedef  scalar_t__ LONGLONG ;

/* Variables and functions */
 int NB_STR2LONGLONG ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* str2longlong ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(void)
{
    int test_num;
    LONGLONG result;

    for (test_num = 0; test_num < NB_STR2LONGLONG; test_num++) {
	result = FUNC2(str2longlong[test_num].str);
        if (str2longlong[test_num].overflow)
            FUNC1(result == str2longlong[test_num].value ||
               (result == ((str2longlong[test_num].overflow == -1) ?
                FUNC0(0x80000000,0x00000000) : FUNC0(0x7fffffff,0xffffffff))),
               "(test %d): call failed: _atoi64(\"%s\") has result 0x%s, expected: 0x%s\n",
               test_num, str2longlong[test_num].str, FUNC3(result),
               FUNC3(str2longlong[test_num].value));
        else
            FUNC1(result == str2longlong[test_num].value,
               "(test %d): call failed: _atoi64(\"%s\") has result 0x%s, expected: 0x%s\n",
               test_num, str2longlong[test_num].str, FUNC3(result),
               FUNC3(str2longlong[test_num].value));
    }
}