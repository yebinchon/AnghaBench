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
struct TYPE_5__ {int type; int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ Item ;

/* Variables and functions */
 int ENOENT ; 
#define  RECURSIVE_REMOVE_PATH 130 
#define  REMOVE_PATH 129 
 int /*<<< orphan*/  REMOVE_PHYSICAL ; 
#define  TRUNCATE_DIRECTORY 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char,...) ; 
 int FUNC3 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  remove_item_instance ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(Item *i) {
        int r;

        FUNC0(i);

        FUNC2("Running remove action for entry %c %s", (char) i->type, i->path);

        switch (i->type) {

        case TRUNCATE_DIRECTORY:
                /* FIXME: we probably should use dir_cleanup() here instead of rm_rf() so that 'x' is honoured. */
                FUNC2("rm -rf \"%s\"", i->path);
                r = FUNC4(i->path, REMOVE_PHYSICAL);
                if (r < 0 && r != -ENOENT)
                        return FUNC3(r, "rm_rf(%s): %m", i->path);

                return 0;

        case REMOVE_PATH:
        case RECURSIVE_REMOVE_PATH:
                return FUNC1(i, remove_item_instance);

        default:
                return 0;
        }
}