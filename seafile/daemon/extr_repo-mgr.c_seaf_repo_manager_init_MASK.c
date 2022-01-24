#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* seaf; int /*<<< orphan*/  index_dir; } ;
struct TYPE_6__ {int /*<<< orphan*/  seaf_dir; } ;
typedef  TYPE_2__ SeafRepoManager ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

int
FUNC4 (SeafRepoManager *mgr)
{
    if (FUNC0 (mgr->index_dir) < 0) {
        FUNC3 ("Index dir %s does not exist and is unable to create\n",
                   mgr->index_dir);
        return -1;
    }

    /* Load all the repos into memory on the client side. */
    FUNC2 (mgr, mgr->seaf->seaf_dir);

    /* Load folder permissions from db. */
    FUNC1 (mgr);

    return 0;
}