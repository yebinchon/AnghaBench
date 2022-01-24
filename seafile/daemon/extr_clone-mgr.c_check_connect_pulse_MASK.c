#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gpointer ;
struct TYPE_8__ {int /*<<< orphan*/  tasks; } ;
struct TYPE_7__ {scalar_t__ state; scalar_t__ repo_version; int /*<<< orphan*/  error; } ;
typedef  TYPE_2__ SeafCloneManager ;
typedef  int /*<<< orphan*/  GHashTableIter ;
typedef  TYPE_1__ CloneTask ;

/* Variables and functions */
 scalar_t__ CLONE_STATE_ERROR ; 
 int /*<<< orphan*/  SYNC_ERROR_ID_NO_ERROR ; 
 scalar_t__ SYNC_ERROR_LEVEL_NETWORK ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_1__**,TYPE_1__**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4 (void *vmanager)
{
    SeafCloneManager *mgr = vmanager;
    CloneTask *task;
    GHashTableIter iter;
    gpointer key, value;

    FUNC1 (&iter, mgr->tasks);
    while (FUNC2 (&iter, &key, &value)) {
        task = value;
        if (task->state == CLONE_STATE_ERROR &&
            task->repo_version > 0 &&
            FUNC3 (task->error) == SYNC_ERROR_LEVEL_NETWORK) {
            task->error = SYNC_ERROR_ID_NO_ERROR;
            FUNC0 (task);
        }
    }

    return TRUE;
}