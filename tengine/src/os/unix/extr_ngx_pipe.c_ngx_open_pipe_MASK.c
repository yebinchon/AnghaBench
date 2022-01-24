#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  scalar_t__ ngx_pid_t ;
struct TYPE_15__ {int* pfd; int type; TYPE_3__* argv; TYPE_2__* open_fd; scalar_t__ pid; } ;
typedef  TYPE_4__ ngx_open_pipe_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_16__ {int /*<<< orphan*/  log; int /*<<< orphan*/  conf_ctx; } ;
typedef  TYPE_5__ ngx_cycle_t ;
struct TYPE_17__ {int /*<<< orphan*/  user; int /*<<< orphan*/  group; int /*<<< orphan*/  username; } ;
typedef  TYPE_6__ ngx_core_conf_t ;
struct TYPE_14__ {int /*<<< orphan*/ ** elts; } ;
struct TYPE_12__ {int /*<<< orphan*/  data; } ;
struct TYPE_13__ {scalar_t__ fd; TYPE_1__ name; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int NGX_FILE_ERROR ; 
 int /*<<< orphan*/  NGX_FILE_OPEN ; 
 int /*<<< orphan*/  NGX_FILE_WRONLY ; 
 scalar_t__ NGX_INVALID_FILE ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 int /*<<< orphan*/  NGX_OK ; 
 int NGX_PIPE_WRITE ; 
 int /*<<< orphan*/  NGX_PROCESS_PIPE ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int STDERR_FILENO ; 
 int STDIN_FILENO ; 
 int STDOUT_FILENO ; 
 int FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char* const*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  ngx_core_module ; 
 int /*<<< orphan*/  ngx_errno ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  ngx_process ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC13 (int*) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ngx_int_t
FUNC18(ngx_cycle_t *cycle, ngx_open_pipe_t *op)
{
    int               fd;
    u_char          **argv;
    ngx_pid_t         pid;
    sigset_t          set;
#ifdef T_PIPE_USE_USER
    ngx_core_conf_t  *ccf;

    ccf = (ngx_core_conf_t *) ngx_get_conf(cycle->conf_ctx, ngx_core_module);
#endif

    if (FUNC13(op->pfd) < 0) {
        return NGX_ERROR;
    }

    argv = op->argv->elts;

    if ((pid = FUNC4()) < 0) {
        goto err;
    } else if (pid > 0) {
        op->pid = pid;

        if (op->open_fd->fd != NGX_INVALID_FILE) {
            if (FUNC0(op->open_fd->fd) == NGX_FILE_ERROR) {
                FUNC9(NGX_LOG_EMERG, cycle->log, ngx_errno,
                              "close \"%s\" failed",
                              op->open_fd->name.data);
            }
        }

        if (op->type == NGX_PIPE_WRITE) {
            op->open_fd->fd = op->pfd[1];
            FUNC0(op->pfd[0]);
        } else {
            op->open_fd->fd = op->pfd[0];
            FUNC0(op->pfd[1]);
        }
    } else {

       /*
        * Set correct process type since closing listening Unix domain socket
        * in a master process also removes the Unix domain socket file.
        */
        ngx_process = NGX_PROCESS_PIPE;
        FUNC7(cycle);

        if (op->type == 1) {
            FUNC0(op->pfd[1]);
            if (op->pfd[0] != STDIN_FILENO) {
                FUNC1(op->pfd[0], STDIN_FILENO);
                FUNC0(op->pfd[0]);
            }
        } else {
            FUNC0(op->pfd[0]);
            if (op->pfd[1] != STDOUT_FILENO) {
                FUNC1(op->pfd[1], STDOUT_FILENO);
                FUNC0(op->pfd[1]);
            }
        }
#ifdef T_PIPE_USE_USER
        if (geteuid() == 0) {
            if (setgid(ccf->group) == -1) {
                ngx_log_error(NGX_LOG_EMERG, cycle->log, ngx_errno,
                              "setgid(%d) failed", ccf->group);
                exit(2);
            }

            if (initgroups(ccf->username, ccf->group) == -1) {
                ngx_log_error(NGX_LOG_EMERG, cycle->log, ngx_errno,
                              "initgroups(%s, %d) failed",
                              ccf->username, ccf->group);
            }

            if (setuid(ccf->user) == -1) {
                ngx_log_error(NGX_LOG_EMERG, cycle->log, ngx_errno,
                              "setuid(%d) failed", ccf->user);
                exit(2);
            }
        }
#endif

        /*
         * redirect stderr to /dev/null, because stderr will be connected with
         * fd used by the last pipe when error log is configured using pipe,
         * that will cause it no close
         */

        fd = FUNC10("/dev/null", NGX_FILE_WRONLY, NGX_FILE_OPEN, 0);
        if (fd == -1) {
            FUNC9(NGX_LOG_EMERG, cycle->log, ngx_errno,
                          "open(\"/dev/null\") failed");
            FUNC3(2);
        }

        if (FUNC1(fd, STDERR_FILENO) == -1) {
            FUNC9(NGX_LOG_EMERG, cycle->log, ngx_errno,
                          "dup2(STDERR) failed");
            FUNC3(2);
        }

        if (fd > STDERR_FILENO && FUNC0(fd) == -1) {
            FUNC9(NGX_LOG_EMERG, cycle->log, ngx_errno,
                          "close() failed");
            FUNC3(2);
        }

        FUNC16(&set);

        if (FUNC17(SIG_SETMASK, &set, NULL) == -1) {
            FUNC9(NGX_LOG_EMERG, cycle->log, ngx_errno,
                          "sigprocmask() failed");
            FUNC3(2);
        }

        if (FUNC12(argv[0], "rollback", sizeof("rollback") - 1) == 0) {
            FUNC11(cycle, op);
            FUNC3(0);

        } else {
            FUNC2((const char *) argv[0], (char *const *) op->argv->elts);
            FUNC3(0);
        }
    }

    return NGX_OK;

err:

    FUNC0(op->pfd[0]);
    FUNC0(op->pfd[1]);

    return NGX_ERROR;
}