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
typedef  int /*<<< orphan*/  evutil_socket_t ;
struct TYPE_3__ {int /*<<< orphan*/  result; int /*<<< orphan*/  (* done_func ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/ * pipefd; } ;
typedef  TYPE_1__ SeafJob ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6 (evutil_socket_t fd, short event, void *vdata)
{
    SeafJob *job = vdata;
    char buf[1];

    if (FUNC2 (job->pipefd[0], buf, 1) != 1) {
        FUNC3 ("[Job Manager] read pipe error: %s\n", FUNC4(errno));
    }
    FUNC1 (job->pipefd[0]);
    FUNC1 (job->pipefd[1]);
    if (job->done_func) {
        job->done_func (job->result);
    }

    FUNC0 (job);
}