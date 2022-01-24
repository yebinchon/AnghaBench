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
typedef  int /*<<< orphan*/ * Unit ;
struct TYPE_2__ {int (* following_set ) (int /*<<< orphan*/ **,int /*<<< orphan*/ **) ;} ;
typedef  int /*<<< orphan*/  Set ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 

int FUNC3(Unit *u, Set **s) {
        FUNC1(u);
        FUNC1(s);

        if (FUNC0(u)->following_set)
                return FUNC0(u)->following_set(u, s);

        *s = NULL;
        return 0;
}