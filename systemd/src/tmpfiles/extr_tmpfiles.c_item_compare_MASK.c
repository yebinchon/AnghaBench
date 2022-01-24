#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ Item ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(const Item *a, const Item *b) {
        /* Make sure that the ownership taking item is put first, so
         * that we first create the node, and then can adjust it */

        if (FUNC1(a->type) && !FUNC1(b->type))
                return -1;
        if (!FUNC1(a->type) && FUNC1(b->type))
                return 1;

        return FUNC0(a->type, b->type);
}