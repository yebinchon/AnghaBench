#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  db; int /*<<< orphan*/  check_timer; } ;
typedef  TYPE_1__ SeafCloneManager ;
typedef  int /*<<< orphan*/  GCallback ;

/* Variables and functions */
 int CHECK_CONNECT_INTERVAL ; 
 int /*<<< orphan*/  check_connect_pulse ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ on_repo_http_fetched ; 
 int /*<<< orphan*/  restart_task ; 
 int /*<<< orphan*/  seaf ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 

int
FUNC3 (SeafCloneManager *mgr)
{
    mgr->check_timer = FUNC1 (check_connect_pulse, mgr,
                                       CHECK_CONNECT_INTERVAL * 1000);

    char *sql = "SELECT * FROM CloneTasks";
    if (FUNC2 (mgr->db, sql, restart_task, mgr) < 0)
        return -1;

    FUNC0 (seaf, "repo-http-fetched",
                      (GCallback)on_repo_http_fetched, mgr);

    return 0;
}