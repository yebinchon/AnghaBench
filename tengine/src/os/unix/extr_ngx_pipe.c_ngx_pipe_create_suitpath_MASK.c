#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
typedef  int /*<<< orphan*/  realpath ;
struct TYPE_6__ {int /*<<< orphan*/  time_now; int /*<<< orphan*/  last_suit_time; int /*<<< orphan*/  logname; int /*<<< orphan*/  suitpath; } ;
typedef  TYPE_1__ ngx_pipe_rollback_conf_t ;
struct TYPE_7__ {int /*<<< orphan*/  log; } ;
typedef  TYPE_2__ ngx_cycle_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 int /*<<< orphan*/  NGX_LOG_INFO ; 
 struct tm* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (char*,int,int /*<<< orphan*/ ,struct tm*) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(ngx_cycle_t *cycle, ngx_pipe_rollback_conf_t *rbcf)
{
    char        realpath[256];
    struct      tm *tm_now;
    int         result;
    time_t      t = FUNC3();

    tm_now = FUNC0(&t);
    if (tm_now == NULL) {
        FUNC1(NGX_LOG_EMERG, cycle->log, 0,
                      "get now time failed");
        return;
    }
    if (0 >= FUNC4(realpath, sizeof(realpath), rbcf->suitpath, tm_now)) {
        FUNC1(NGX_LOG_EMERG, cycle->log, 0,
                      "parse suitpath with time now failed");
        return;
    }

    FUNC2(realpath, cycle);

    result = FUNC6(realpath);
    if (0 == result) {
        FUNC1(NGX_LOG_INFO, cycle->log, 0,
                      "unlink [%s] success", realpath);
    } else {
        FUNC1(NGX_LOG_EMERG, cycle->log, ngx_errno,
                      "unlink [%s] failed", realpath);
    }

    result = FUNC5(rbcf->logname, realpath);
    if (0 == result) {
        FUNC1(NGX_LOG_INFO, cycle->log, 0,
                      "symlink [%s] success", realpath);
    } else {
        FUNC1(NGX_LOG_EMERG, cycle->log, ngx_errno,
                      "symlink [%s] failed", realpath);
    }

    rbcf->last_suit_time = rbcf->time_now;
}