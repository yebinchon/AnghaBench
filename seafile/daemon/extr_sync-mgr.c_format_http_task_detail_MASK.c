#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  clone_mgr; int /*<<< orphan*/  repo_mgr; } ;
struct TYPE_11__ {char* repo_name; } ;
struct TYPE_10__ {scalar_t__ state; scalar_t__ runtime_state; scalar_t__ type; int /*<<< orphan*/  repo_id; scalar_t__ is_clone; } ;
struct TYPE_9__ {char* name; } ;
typedef  TYPE_1__ SeafRepo ;
typedef  TYPE_2__ HttpTxTask ;
typedef  int /*<<< orphan*/  GString ;
typedef  TYPE_3__ CloneTask ;

/* Variables and functions */
 scalar_t__ HTTP_TASK_RT_STATE_FINISHED ; 
 scalar_t__ HTTP_TASK_RT_STATE_INIT ; 
 scalar_t__ HTTP_TASK_STATE_NORMAL ; 
 scalar_t__ HTTP_TASK_TYPE_UPLOAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int,char*) ; 
 int FUNC1 (TYPE_2__*) ; 
 TYPE_6__* seaf ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void 
FUNC4 (HttpTxTask *task, GString *buf)
{
    if (task->state != HTTP_TASK_STATE_NORMAL ||
        task->runtime_state == HTTP_TASK_RT_STATE_INIT ||
        task->runtime_state == HTTP_TASK_RT_STATE_FINISHED)
        return;

    SeafRepo *repo = FUNC3 (seaf->repo_mgr,
                                                 task->repo_id);
    char *repo_name;
    char *type;
    
    if (repo) {
        repo_name = repo->name;
        type = (task->type == HTTP_TASK_TYPE_UPLOAD) ? "upload" : "download";
        
    } else if (task->is_clone) {
        CloneTask *ctask;
        ctask = FUNC2 (seaf->clone_mgr, task->repo_id);
        repo_name = ctask->repo_name;
        type = "download";
        
    } else {
        return;
    }
    int rate = FUNC1(task);

    FUNC0 (buf, "%s\t%d %s\n", type, rate, repo_name);
}