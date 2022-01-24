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
struct vtable_member {int /*<<< orphan*/  member; int /*<<< orphan*/  interface; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vtable_member const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(const struct vtable_member *x, const struct vtable_member *y) {
        int r;

        FUNC0(x);
        FUNC0(y);

        r = FUNC1(x->path, y->path);
        if (r != 0)
                return r;

        r = FUNC1(x->interface, y->interface);
        if (r != 0)
                return r;

        return FUNC1(x->member, y->member);
}