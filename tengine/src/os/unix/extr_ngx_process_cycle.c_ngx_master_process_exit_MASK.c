#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ngx_uint_t ;
struct TYPE_14__ {int /*<<< orphan*/  pool; TYPE_1__** modules; int /*<<< orphan*/  log; } ;
typedef  TYPE_2__ ngx_cycle_t ;
struct TYPE_17__ {int /*<<< orphan*/  files_n; int /*<<< orphan*/  files; TYPE_5__* log; } ;
struct TYPE_16__ {int /*<<< orphan*/  fd; } ;
struct TYPE_15__ {int /*<<< orphan*/ * writer; int /*<<< orphan*/ * next; TYPE_7__* file; } ;
struct TYPE_13__ {int /*<<< orphan*/  (* exit_master ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_NOTICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_9__* ngx_cycle ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_9__ ngx_exit_cycle ; 
 TYPE_5__ ngx_exit_log ; 
 TYPE_7__ ngx_exit_log_file ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 TYPE_5__* FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC9(ngx_cycle_t *cycle)
{
    ngx_uint_t  i;

    FUNC3(cycle);

    FUNC6(NGX_LOG_NOTICE, cycle->log, 0, "exit");

    for (i = 0; cycle->modules[i]; i++) {
        if (cycle->modules[i]->exit_master) {
            cycle->modules[i]->exit_master(cycle);
        }
    }

    FUNC1(cycle);

    /*
     * Copy ngx_cycle->log related data to the special static exit cycle,
     * log, and log file structures enough to allow a signal handler to log.
     * The handler may be called when standard ngx_cycle->log allocated from
     * ngx_cycle->pool is already destroyed.
     */


    ngx_exit_log = *FUNC7(ngx_cycle->log);

    ngx_exit_log_file.fd = ngx_exit_log.file->fd;
    ngx_exit_log.file = &ngx_exit_log_file;
    ngx_exit_log.next = NULL;
    ngx_exit_log.writer = NULL;

    ngx_exit_cycle.log = &ngx_exit_log;
    ngx_exit_cycle.files = ngx_cycle->files;
    ngx_exit_cycle.files_n = ngx_cycle->files_n;
    ngx_cycle = &ngx_exit_cycle;

    FUNC4(cycle->pool);
#if (T_PIPES)
    /* Terminate all pipe processes */

    ngx_increase_pipe_generation();
    ngx_close_old_pipes();
#endif

    FUNC0(0);
}