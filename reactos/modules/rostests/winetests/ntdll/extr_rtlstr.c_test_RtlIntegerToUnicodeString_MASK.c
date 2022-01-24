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
 size_t NB_INT2STR ; 
 int /*<<< orphan*/ * int2str ; 
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(void)
{
    size_t test_num;

    for (test_num = 0; test_num < NB_INT2STR; test_num++)
        FUNC0(test_num, &int2str[test_num]);
}