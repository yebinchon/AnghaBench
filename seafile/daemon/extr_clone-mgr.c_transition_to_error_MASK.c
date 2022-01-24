#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t state; int error; int /*<<< orphan*/  repo_id; } ;
typedef  TYPE_1__ CloneTask ;

/* Variables and functions */
 size_t CLONE_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * state_str ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2 (CloneTask *task, int error)
{
    FUNC0 ("Transition clone state for %.8s from [%s] to [error]: %s.\n",
                  task->repo_id,
                  state_str[task->state], 
                  FUNC1(error));

    task->state = CLONE_STATE_ERROR;
    task->error = error;
}