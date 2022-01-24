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
struct TYPE_4__ {scalar_t__ type; int /*<<< orphan*/  blk_ref_cnts; struct TYPE_4__* repo_name; struct TYPE_4__* email; struct TYPE_4__* worktree; struct TYPE_4__* passwd; struct TYPE_4__* token; struct TYPE_4__* host; } ;
typedef  TYPE_1__ HttpTxTask ;

/* Variables and functions */
 scalar_t__ HTTP_TASK_TYPE_DOWNLOAD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (HttpTxTask *task)
{
    FUNC0 (task->host);
    FUNC0 (task->token);
    FUNC0 (task->passwd);
    FUNC0 (task->worktree);
    FUNC0 (task->email);
    FUNC0 (task->repo_name);
    if (task->type == HTTP_TASK_TYPE_DOWNLOAD) {
        FUNC1 (task->blk_ref_cnts);
    }
    FUNC0 (task);
}