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
typedef  int /*<<< orphan*/  compare_func_t ;
typedef  int /*<<< orphan*/  Prioq ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(Prioq **q, compare_func_t compare_func) {
        FUNC0(q);

        if (*q)
                return 0;

        *q = FUNC1(compare_func);
        if (!*q)
                return -ENOMEM;

        return 0;
}