
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fstype; int options; int what; } ;
struct TYPE_5__ {TYPE_1__ parameters_proc_self_mountinfo; } ;
typedef TYPE_1__ MountParameters ;
typedef TYPE_2__ Mount ;


 int free_and_strdup (int *,char const*) ;

__attribute__((used)) static int update_parameters_proc_self_mountinfo(
                Mount *m,
                const char *what,
                const char *options,
                const char *fstype) {

        MountParameters *p;
        int r, q, w;

        p = &m->parameters_proc_self_mountinfo;

        r = free_and_strdup(&p->what, what);
        if (r < 0)
                return r;

        q = free_and_strdup(&p->options, options);
        if (q < 0)
                return q;

        w = free_and_strdup(&p->fstype, fstype);
        if (w < 0)
                return w;

        return r > 0 || q > 0 || w > 0;
}
