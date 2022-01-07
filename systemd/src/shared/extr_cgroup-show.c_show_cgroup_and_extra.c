
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int OutputFlags ;


 int assert (char const*) ;
 int show_cgroup (char const*,char const*,char const*,size_t,int ) ;
 int show_extra_pids (char const*,char const*,char const*,size_t,int const*,unsigned int,int ) ;

int show_cgroup_and_extra(
                const char *controller,
                const char *path,
                const char *prefix,
                size_t n_columns,
                const pid_t extra_pids[],
                unsigned n_extra_pids,
                OutputFlags flags) {

        int r;

        assert(path);

        r = show_cgroup(controller, path, prefix, n_columns, flags);
        if (r < 0)
                return r;

        return show_extra_pids(controller, path, prefix, n_columns, extra_pids, n_extra_pids, flags);
}
