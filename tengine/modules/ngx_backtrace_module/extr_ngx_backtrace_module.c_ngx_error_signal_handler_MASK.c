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
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct sigaction {int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; } ;
struct TYPE_9__ {int signo; int /*<<< orphan*/  signame; } ;
typedef  TYPE_2__ ngx_signal_t ;
struct TYPE_10__ {TYPE_1__* file; } ;
typedef  TYPE_3__ ngx_log_t ;
struct TYPE_11__ {int max_stack_size; TYPE_3__* log; } ;
typedef  TYPE_4__ ngx_backtrace_conf_t ;
struct TYPE_12__ {int /*<<< orphan*/  pool; TYPE_3__* log; int /*<<< orphan*/  conf_ctx; } ;
struct TYPE_8__ {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int NGX_BACKTRACE_DEFAULT_STACK_MAX_SIZE ; 
 int NGX_CONF_UNSET ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 int /*<<< orphan*/  SIG_DFL ; 
 size_t FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ngx_backtrace_module ; 
 TYPE_2__* ngx_backtrace_signals ; 
 TYPE_6__* ngx_cycle ; 
 int /*<<< orphan*/  ngx_errno ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (struct sigaction*,int) ; 
 void* FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(int signo)
{
    void                 *buffer;
    size_t                size;
    ngx_log_t            *log;
    ngx_signal_t         *sig;
    struct sigaction      sa;
    ngx_backtrace_conf_t *bcf;

    for (sig = ngx_backtrace_signals; sig->signo != 0; sig++) {
        if (sig->signo == signo) {
            break;
        }
    }

    bcf = (ngx_backtrace_conf_t *) FUNC3(ngx_cycle->conf_ctx,
                                                ngx_backtrace_module);

    log = bcf->log ? bcf->log : ngx_cycle->log;
    FUNC5(NGX_LOG_ERR, log, 0,
                  "nginx coredump by signal %d (%s)", signo, sig->signame);

    FUNC6(&sa, sizeof(struct sigaction));
    sa.sa_handler = SIG_DFL;
    FUNC9(&sa.sa_mask);
    if (FUNC8(signo, &sa, NULL) == -1) {
        FUNC5(NGX_LOG_ERR, log, ngx_errno,
                      "sigaction(%s) failed", sig->signame);
    }

    if (bcf->max_stack_size == NGX_CONF_UNSET) {
        bcf->max_stack_size = NGX_BACKTRACE_DEFAULT_STACK_MAX_SIZE;
    }

    buffer = FUNC7(ngx_cycle->pool, sizeof(void *) * bcf->max_stack_size);
    if (buffer == NULL) {
        goto invalid;
    }

    size = FUNC0(buffer, bcf->max_stack_size);
    FUNC1(buffer, size, log->file->fd);

invalid:

    FUNC2(FUNC4(), signo);
}