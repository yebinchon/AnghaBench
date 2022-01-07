
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_13__ ;
typedef struct TYPE_15__ TYPE_12__ ;


struct rlimit {void* rlim_max; void* rlim_cur; } ;
typedef int sigset_t ;
typedef void* rlim_t ;
typedef size_t ngx_uint_t ;
struct TYPE_19__ {scalar_t__ (* init ) (TYPE_5__*) ;int name; } ;
typedef TYPE_3__ ngx_proc_module_t ;
struct TYPE_20__ {int * previous; } ;
typedef TYPE_4__ ngx_listening_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_18__ {size_t nelts; TYPE_4__* elts; } ;
struct TYPE_21__ {int log; TYPE_2__ listening; int conf_ctx; } ;
typedef TYPE_5__ ngx_cycle_t ;
struct TYPE_17__ {scalar_t__ data; scalar_t__ len; } ;
struct TYPE_22__ {scalar_t__ rlimit_nofile; scalar_t__ rlimit_core; TYPE_1__ working_directory; int user; int group; int username; } ;
typedef TYPE_6__ ngx_core_conf_t ;
struct TYPE_16__ {scalar_t__ (* init_process ) (TYPE_5__*) ;} ;
struct TYPE_15__ {int pid; int* channel; } ;


 scalar_t__ NGX_CONF_UNSET ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_EMERG ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int NGX_READ_EVENT ;
 int PRIO_PROCESS ;
 int PR_SET_DUMPABLE ;
 int RLIMIT_CORE ;
 int RLIMIT_NOFILE ;
 int SIG_SETMASK ;
 int chdir (char*) ;
 int close (int) ;
 int exit (int) ;
 scalar_t__ geteuid () ;
 int initgroups (int ,int ) ;
 scalar_t__ ngx_add_channel_event (TYPE_5__*,int ,int ,int ) ;
 int ngx_channel ;
 int ngx_core_module ;
 int ngx_errno ;
 TYPE_13__ ngx_event_core_module ;
 scalar_t__ ngx_get_conf (int ,int ) ;
 scalar_t__ ngx_last_process ;
 int ngx_log_error (int ,int ,int ,char*,int *,...) ;
 scalar_t__ ngx_process_slot ;
 TYPE_12__* ngx_processes ;
 int ngx_procs_channel_handler ;
 int * ngx_set_environment (TYPE_5__*,int *) ;
 int prctl (int ,int,int ,int ,int ) ;
 int setgid (int ) ;
 int setpriority (int ,int ,int) ;
 int setrlimit (int ,struct rlimit*) ;
 int setuid (int ) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 scalar_t__ stub1 (TYPE_5__*) ;
 scalar_t__ stub2 (TYPE_5__*) ;

__attribute__((used)) static void
ngx_procs_process_init(ngx_cycle_t *cycle, ngx_proc_module_t *module,
    ngx_int_t priority)
{
    sigset_t set;
    ngx_int_t n;
    ngx_uint_t i;
    struct rlimit rlmt;
    ngx_core_conf_t *ccf;
    ngx_listening_t *ls;

    if (ngx_set_environment(cycle, ((void*)0)) == ((void*)0)) {

        exit(2);
    }

    ccf = (ngx_core_conf_t *) ngx_get_conf(cycle->conf_ctx, ngx_core_module);

    if (priority != 0) {
        if (setpriority(PRIO_PROCESS, 0, (int) priority) == -1) {
            ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                          "process %V setpriority(%i) failed", &module->name,
                          priority);
        }
    }

    if (ccf->rlimit_nofile != NGX_CONF_UNSET) {
        rlmt.rlim_cur = (rlim_t) ccf->rlimit_nofile;
        rlmt.rlim_max = (rlim_t) ccf->rlimit_nofile;

        if (setrlimit(RLIMIT_NOFILE, &rlmt) == -1) {
            ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                          "process %V setrlimit(RLIMIT_NOFILE, %i) failed",
                          &module->name, ccf->rlimit_nofile);
        }
    }

    if (ccf->rlimit_core != NGX_CONF_UNSET) {
        rlmt.rlim_cur = (rlim_t) ccf->rlimit_core;
        rlmt.rlim_max = (rlim_t) ccf->rlimit_core;

        if (setrlimit(RLIMIT_CORE, &rlmt) == -1) {
            ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                          "process %V setrlimit(RLIMIT_CORE, %O) failed",
                          &module->name, ccf->rlimit_core);
        }
    }

    if (geteuid() == 0) {
        if (setgid(ccf->group) == -1) {
            ngx_log_error(NGX_LOG_EMERG, cycle->log, ngx_errno,
                          "process %V setgid(%d) failed", &module->name,
                          ccf->group);

            exit(2);
        }

        if (initgroups(ccf->username, ccf->group) == -1) {
            ngx_log_error(NGX_LOG_EMERG, cycle->log, ngx_errno,
                          "process %V initgroups(%s, %d) failed", &module->name,
                          ccf->username, ccf->group);
        }

        if (setuid(ccf->user) == -1) {
            ngx_log_error(NGX_LOG_EMERG, cycle->log, ngx_errno,
                          "process %V setuid(%d) failed", &module->name,
                          ccf->user);

            exit(2);
        }
    }
    if (ccf->working_directory.len) {
        if (chdir((char *) ccf->working_directory.data) == -1) {
            ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                          "process %V chdir(\"%s\") failed", &module->name,
                          ccf->working_directory.data);

            exit(2);
        }
    }

    sigemptyset(&set);

    if (sigprocmask(SIG_SETMASK, &set, ((void*)0)) == -1) {
        ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                      "process %V sigprocmask() failed", &module->name);
    }





    ls = cycle->listening.elts;

    for (i = 0; i < cycle->listening.nelts; i++) {
        ls[i].previous = ((void*)0);
    }

    if (ngx_event_core_module.init_process(cycle) != NGX_OK) {
        ngx_log_error(NGX_LOG_ERR, cycle->log, 0,
                      "process %V init event error", &module->name);
        exit(2);
    }

    if (module->init) {
        if (module->init(cycle) != NGX_OK) {
            ngx_log_error(NGX_LOG_ERR, cycle->log, 0,
                          "process %V process init error", &module->name);
            exit(2);
        }
    }


    for (n = 0; n < ngx_last_process; n++) {

        if (ngx_processes[n].pid == -1) {
            continue;
        }

        if (n == ngx_process_slot) {
            continue;
        }

        if (ngx_processes[n].channel[1] == -1) {
            continue;
        }

        if (close(ngx_processes[n].channel[1]) == -1) {
            ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                          "process %V close() channel failed", &module->name);
        }
    }

    if (close(ngx_processes[ngx_process_slot].channel[0]) == -1) {
        ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                      "process %V close() channel failed", &module->name);
    }





    if (ngx_add_channel_event(cycle, ngx_channel, NGX_READ_EVENT,
                              ngx_procs_channel_handler)
        == NGX_ERROR)
    {

        exit(2);
    }
}
