#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ status; int /*<<< orphan*/  new_name; int /*<<< orphan*/  name; int /*<<< orphan*/  unmerge_state; int /*<<< orphan*/  type; } ;
struct TYPE_4__ {TYPE_2__* data; struct TYPE_4__* next; } ;
typedef  int /*<<< orphan*/  GString ;
typedef  TYPE_1__ GList ;
typedef  TYPE_2__ DiffEntry ;

/* Variables and functions */
 scalar_t__ DIFF_STATUS_RENAMED ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,...) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

char *
FUNC4(GList *results)
{
    GList *ptr;
    GString *fmt_status;
    DiffEntry *de;

    fmt_status = FUNC2("");

    for (ptr = results; ptr; ptr = ptr->next) {
        de = ptr->data;

        if (de->status != DIFF_STATUS_RENAMED)
            FUNC0(fmt_status, "%c %c %d %u %s\n",
                                   de->type, de->status, de->unmerge_state,
                                   (int)FUNC3(de->name), de->name);
        else
            FUNC0(fmt_status, "%c %c %d %u %s %u %s\n",
                                   de->type, de->status, de->unmerge_state,
                                   (int)FUNC3(de->name), de->name,
                                   (int)FUNC3(de->new_name), de->new_name);
    }

    return FUNC1(fmt_status, FALSE);
}