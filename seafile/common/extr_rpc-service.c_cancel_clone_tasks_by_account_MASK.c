#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  clone_mgr; } ;
struct TYPE_7__ {int /*<<< orphan*/  repo_id; int /*<<< orphan*/  email; int /*<<< orphan*/  peer_addr; } ;
struct TYPE_6__ {TYPE_2__* data; struct TYPE_6__* next; } ;
typedef  TYPE_1__ GList ;
typedef  TYPE_2__ CloneTask ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 TYPE_4__* seaf ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (const char *account_server, const char *account_email)
{
    GList *ptr, *tasks;
    CloneTask *task;

    tasks = FUNC3 (seaf->clone_mgr);
    for (ptr = tasks; ptr != NULL; ptr = ptr->next) {
        task = ptr->data;

        if (FUNC1(account_server, task->peer_addr) == 0
            && FUNC1(account_email, task->email) == 0) {
            FUNC2 (seaf->clone_mgr, task->repo_id);
        }
    }

    FUNC0 (tasks);
}