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

/* Variables and functions */
 int NB_LARGEINT2STR ; 
 int /*<<< orphan*/ * largeint2str ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(void)
{
    int test_num;

    for (test_num = 0; test_num < NB_LARGEINT2STR; test_num++) {
	FUNC0(test_num, &largeint2str[test_num]);
    } /* for */
}