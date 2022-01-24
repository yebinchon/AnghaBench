#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  intptr_t ngx_int_t ;
struct TYPE_10__ {int /*<<< orphan*/  log; } ;
typedef  TYPE_1__ ngx_cycle_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_EVENT ; 
 int /*<<< orphan*/  NGX_LOG_NOTICE ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  NGX_PROCESS_WORKER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 () ; 
 int ngx_exiting ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ngx_process ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ ngx_quit ; 
 scalar_t__ ngx_reopen ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ ngx_terminate ; 
 intptr_t ngx_worker ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,intptr_t) ; 

__attribute__((used)) static void
FUNC11(ngx_cycle_t *cycle, void *data)
{
    ngx_int_t worker = (intptr_t) data;

    ngx_process = NGX_PROCESS_WORKER;
    ngx_worker = worker;

    FUNC10(cycle, worker);

    FUNC8("worker process");

    for ( ;; ) {

        if (ngx_exiting) {
            if (FUNC2() == NGX_OK) {
                FUNC4(NGX_LOG_NOTICE, cycle->log, 0, "exiting");
                FUNC9(cycle);
            }
        }

        FUNC3(NGX_LOG_DEBUG_EVENT, cycle->log, 0, "worker cycle");

        FUNC5(cycle);

        if (ngx_terminate) {
            FUNC4(NGX_LOG_NOTICE, cycle->log, 0, "exiting");
            FUNC9(cycle);
        }

        if (ngx_quit) {
            ngx_quit = 0;
            FUNC4(NGX_LOG_NOTICE, cycle->log, 0,
                          "gracefully shutting down");
            FUNC8("worker process is shutting down");

            if (!ngx_exiting) {
                ngx_exiting = 1;
                FUNC7(cycle);
                FUNC1(cycle);
                FUNC0(cycle);
            }
        }

        if (ngx_reopen) {
            ngx_reopen = 0;
            FUNC4(NGX_LOG_NOTICE, cycle->log, 0, "reopening logs");
            FUNC6(cycle, -1);
        }
    }
}