#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  Buffer; } ;
typedef  TYPE_1__ UNICODE_STRING ;
struct TYPE_6__ {int value; int /*<<< orphan*/  str; } ;

/* Variables and functions */
 int NB_STR2LONG ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* str2long ; 

__attribute__((used)) static void FUNC4(void)
{
    int test_num;
    UNICODE_STRING uni;
    int result;

    for (test_num = 0; test_num < NB_STR2LONG; test_num++) {
	FUNC1(&uni, str2long[test_num].str);
	result = FUNC3(uni.Buffer);
	FUNC0(result == str2long[test_num].value,
           "(test %d): call failed: _wtoi(\"%s\") has result %d, expected: %d\n",
	   test_num, str2long[test_num].str, result, str2long[test_num].value);
	FUNC2(&uni);
    } /* for */
}