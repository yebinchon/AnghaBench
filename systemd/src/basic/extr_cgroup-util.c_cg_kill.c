
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cg_kill_log_func_t ;
typedef int Set ;
typedef int CGroupFlags ;


 int SIGKILL ;
 int cg_kill_items (char const*,char const*,int,int ,int *,int ,void*,char*) ;
 int cg_unified_controller (char const*) ;

int cg_kill(
                const char *controller,
                const char *path,
                int sig,
                CGroupFlags flags,
                Set *s,
                cg_kill_log_func_t log_kill,
                void *userdata) {
        int r;

        r = cg_kill_items(controller, path, sig, flags, s, log_kill, userdata, "cgroup.procs");
        if (r < 0 || sig != SIGKILL)
                return r;




        r = cg_unified_controller(controller);
        if (r <= 0)
                return r;

        return cg_kill_items(controller, path, sig, flags, s, log_kill, userdata, "cgroup.threads");
}
