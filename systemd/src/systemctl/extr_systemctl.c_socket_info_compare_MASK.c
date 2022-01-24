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
struct socket_info {int /*<<< orphan*/  type; int /*<<< orphan*/  path; scalar_t__ machine; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct socket_info const*) ; 
 int FUNC1 (scalar_t__,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const struct socket_info *a, const struct socket_info *b) {
        int r;

        FUNC0(a);
        FUNC0(b);

        if (!a->machine && b->machine)
                return -1;
        if (a->machine && !b->machine)
                return 1;
        if (a->machine && b->machine) {
                r = FUNC1(a->machine, b->machine);
                if (r != 0)
                        return r;
        }

        r = FUNC2(a->path, b->path);
        if (r == 0)
                r = FUNC2(a->type, b->type);

        return r;
}