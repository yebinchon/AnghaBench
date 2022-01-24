#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int flags; int master_readable; } ;
typedef  TYPE_1__ PTYForward ;

/* Variables and functions */
 int PTY_FORWARD_IGNORE_VHANGUP ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 

int FUNC4(PTYForward *f, bool b) {
        int r;

        FUNC1(f);

        if (!!(f->flags & PTY_FORWARD_IGNORE_VHANGUP) == b)
                return 0;

        FUNC0(f->flags, PTY_FORWARD_IGNORE_VHANGUP, b);

        if (!FUNC2(f)) {

                /* We shall now react to vhangup()s? Let's check
                 * immediately if we might be in one */

                f->master_readable = true;
                r = FUNC3(f);
                if (r < 0)
                        return r;
        }

        return 0;
}