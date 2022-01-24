#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_9__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_uint_t ;
struct TYPE_18__ {scalar_t__ data; } ;
struct TYPE_19__ {int /*<<< orphan*/  (* loop ) (TYPE_6__*) ;TYPE_1__ name; } ;
typedef  TYPE_2__ ngx_proc_module_t ;
struct TYPE_20__ {int /*<<< orphan*/  priority; int /*<<< orphan*/  delay_start; } ;
typedef  TYPE_3__ ngx_proc_conf_t ;
struct TYPE_21__ {TYPE_3__* proc_conf; TYPE_5__* module; } ;
typedef  TYPE_4__ ngx_proc_args_t ;
struct TYPE_22__ {TYPE_2__* ctx; } ;
typedef  TYPE_5__ ngx_module_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_23__ {scalar_t__ connection_n; int /*<<< orphan*/  log; TYPE_7__* connections; } ;
typedef  TYPE_6__ ngx_cycle_t ;
struct TYPE_24__ {int fd; int close; TYPE_9__* read; scalar_t__ idle; } ;
typedef  TYPE_7__ ngx_connection_t ;
struct TYPE_25__ {int /*<<< orphan*/  (* handler ) (TYPE_9__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_NOTICE ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  NGX_PROCESS_PROC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int ngx_exiting ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_process ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ ngx_quit ; 
 scalar_t__ ngx_reopen ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ ngx_terminate ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ ngx_use_accept_mutex ; 
 int /*<<< orphan*/  FUNC9 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*) ; 

__attribute__((used)) static void
FUNC11(ngx_cycle_t *cycle, void *data)
{
    ngx_int_t           rc;
    ngx_uint_t          i;
    ngx_module_t       *module;
    ngx_proc_args_t    *args;
    ngx_proc_conf_t    *cpcf;
    ngx_connection_t   *c;
    ngx_proc_module_t  *ctx;

    args = data;
    module = args->module;
    cpcf = args->proc_conf;
    ctx = module->ctx;
    ngx_process = NGX_PROCESS_PROC;

    FUNC7((char *) ctx->name.data);
    FUNC2(cpcf->delay_start);

    FUNC5(cycle, ctx, cpcf->priority);
    FUNC0(cycle);
    ngx_use_accept_mutex = 0;

    for ( ;; ) {
        if (ngx_exiting || ngx_quit) {
            ngx_exiting = 1;
            FUNC1(NGX_LOG_NOTICE, cycle->log, 0,
                          "process %V gracefully shutting down", &ctx->name);
            FUNC7("processes are shutting down");

            c = cycle->connections;

            for (i = 0; i < cycle->connection_n; i++) {
                if (c[i].fd != -1 && c[i].idle) {
                    c[i].close = 1;
                    c[i].read->handler(c[i].read);
                }
            }

            FUNC4(cycle, ctx);
        }

        if (ngx_terminate) {
            FUNC1(NGX_LOG_NOTICE, cycle->log, 0, "process %V exiting",
                          &ctx->name);

            FUNC4(cycle, ctx);
        }

        if (ngx_reopen) {
            ngx_reopen = 0;
            FUNC1(NGX_LOG_NOTICE, cycle->log, 0, "reopening logs");
            FUNC6(cycle, -1);
        }

        if (ctx->loop) {
            rc = ctx->loop(cycle);
            if (rc != NGX_OK) {
                break;
            }
        }

        FUNC8();

        FUNC3(cycle);
    }

    FUNC4(cycle, ctx);
}