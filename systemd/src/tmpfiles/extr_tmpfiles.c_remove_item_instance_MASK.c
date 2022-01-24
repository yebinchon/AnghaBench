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
struct TYPE_4__ {int type; } ;
typedef  TYPE_1__ Item ;

/* Variables and functions */
 int ENOENT ; 
#define  RECURSIVE_REMOVE_PATH 129 
#define  REMOVE_PATH 128 
 int REMOVE_PHYSICAL ; 
 int REMOVE_ROOT ; 
 int REMOVE_SUBVOLUME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int FUNC3 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int FUNC5 (char const*,int) ; 

__attribute__((used)) static int FUNC6(Item *i, const char *instance) {
        int r;

        FUNC0(i);

        switch (i->type) {

        case REMOVE_PATH:
                if (FUNC4(instance) < 0 && errno != ENOENT)
                        return FUNC3(errno, "rm(%s): %m", instance);

                break;

        case RECURSIVE_REMOVE_PATH:
                /* FIXME: we probably should use dir_cleanup() here instead of rm_rf() so that 'x' is honoured. */
                FUNC2("rm -rf \"%s\"", instance);
                r = FUNC5(instance, REMOVE_ROOT|REMOVE_SUBVOLUME|REMOVE_PHYSICAL);
                if (r < 0 && r != -ENOENT)
                        return FUNC3(r, "rm_rf(%s): %m", instance);

                break;

        default:
                FUNC1("wut?");
        }

        return 0;
}