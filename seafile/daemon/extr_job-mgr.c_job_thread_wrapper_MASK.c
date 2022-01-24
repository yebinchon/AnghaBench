#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * pipefd; int /*<<< orphan*/  data; int /*<<< orphan*/  (* thread_func ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  result; } ;
typedef  TYPE_1__ SeafJob ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (void *vdata, void *unused)
{
    SeafJob *job = vdata;
   
    job->result = job->thread_func (job->data);
    if (FUNC0 (job->pipefd[1], "a", 1) != 1) {
        FUNC1 ("[Job Manager] write to pipe error: %s\n", FUNC2(errno));
    }
}