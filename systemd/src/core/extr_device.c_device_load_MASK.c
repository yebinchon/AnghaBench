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
struct TYPE_5__ {int /*<<< orphan*/  description; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ Unit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,char*) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(Unit *u) {
        int r;

        r = FUNC1(u, false);
        if (r < 0)
                return r;

        if (!u->description) {
                /* Generate a description based on the path, to be used until the
                   device is initialized properly */
                r = FUNC2(u->id, &u->description);
                if (r < 0)
                        FUNC0(u, r, "Failed to unescape name: %m");
        }

        return 0;
}