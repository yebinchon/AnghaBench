#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int mask; } ;

/* Variables and functions */
 int NB_ULONG2STR ; 
 int /*<<< orphan*/  FUNC0 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_1__*) ; 
 TYPE_1__* ulong2str ; 

__attribute__((used)) static void FUNC3(void)
{
    int test_num;

    for (test_num = 0; test_num < NB_ULONG2STR; test_num++) {
	if (ulong2str[test_num].mask & 0x01) {
	    FUNC0(test_num, &ulong2str[test_num]);
	} /* if */
	if (ulong2str[test_num].mask & 0x02) {
	    FUNC1(test_num, &ulong2str[test_num]);
	} /* if */
	if (ulong2str[test_num].mask & 0x04) {
	    FUNC2(test_num, &ulong2str[test_num]);
	} /* if */
    } /* for */
}