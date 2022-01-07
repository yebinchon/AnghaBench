
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ cgroup_path; TYPE_1__* manager; } ;
typedef TYPE_2__ pid_t ;
typedef TYPE_2__ Unit ;
struct TYPE_10__ {int cgroup_supported; } ;


 int EXIT_CGROUP ;
 int FORK_REOPEN_LOG ;
 int PR_SET_PDEATHSIG ;
 int SIGNALS_CRASH_HANDLER ;
 int SIGNALS_IGNORE ;
 int SIGPIPE ;
 int SIGTERM ;
 int _exit (int ) ;
 int assert (TYPE_2__*) ;
 int cg_attach_everywhere (int ,scalar_t__,int ,int *,int *) ;
 int default_signals (int ,int ,int) ;
 int ignore_signals (int ,int) ;
 int log_unit_error_errno (TYPE_2__*,int,char*,scalar_t__) ;
 int prctl (int ,int ) ;
 int safe_fork (char const*,int ,TYPE_2__*) ;
 int unit_realize_cgroup (TYPE_2__*) ;

int unit_fork_helper_process(Unit *u, const char *name, pid_t *ret) {
        int r;

        assert(u);
        assert(ret);




        (void) unit_realize_cgroup(u);

        r = safe_fork(name, FORK_REOPEN_LOG, ret);
        if (r != 0)
                return r;

        (void) default_signals(SIGNALS_CRASH_HANDLER, SIGNALS_IGNORE, -1);
        (void) ignore_signals(SIGPIPE, -1);

        (void) prctl(PR_SET_PDEATHSIG, SIGTERM);

        if (u->cgroup_path) {
                r = cg_attach_everywhere(u->manager->cgroup_supported, u->cgroup_path, 0, ((void*)0), ((void*)0));
                if (r < 0) {
                        log_unit_error_errno(u, r, "Failed to join unit cgroup %s: %m", u->cgroup_path);
                        _exit(EXIT_CGROUP);
                }
        }

        return 0;
}
