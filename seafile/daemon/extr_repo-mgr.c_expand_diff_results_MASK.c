#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  fs_mgr; } ;
struct TYPE_17__ {scalar_t__ status; int /*<<< orphan*/  name; int /*<<< orphan*/  sha1; } ;
struct TYPE_16__ {struct TYPE_16__* next; TYPE_2__* data; } ;
typedef  TYPE_1__ GList ;
typedef  int /*<<< orphan*/  GDestroyNotify ;
typedef  TYPE_2__ DiffEntry ;

/* Variables and functions */
 scalar_t__ DIFF_STATUS_DIR_ADDED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  expand_dir_added_cb ; 
 TYPE_1__* FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_4__* seaf ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char const*,int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 

__attribute__((used)) static int
FUNC7 (const char *repo_id, int version,
                     const char *remote_root, const char *local_root,
                     GList **results)
{
    GList *ptr, *next;
    DiffEntry *de;
    char obj_id[41];
    GList *expanded = NULL;

    ptr = *results;
    while (ptr) {
        de = ptr->data;

        next = ptr->next;

        if (de->status == DIFF_STATUS_DIR_ADDED) {
            *results = FUNC2 (*results, ptr);

            FUNC5 (de->sha1, obj_id, 20);
            if (FUNC6 (seaf->fs_mgr,
                                               repo_id, version,
                                               remote_root,
                                               de->name,
                                               expand_dir_added_cb,
                                               &expanded) < 0) {
                FUNC0 (de);
                goto error;
            }
            FUNC0 (de);
        }

        ptr = next;
    }

    expanded = FUNC4 (expanded);
    *results = FUNC1 (*results, expanded);

    return 0;

error:
    FUNC3 (expanded, (GDestroyNotify)diff_entry_free);
    return -1;
}