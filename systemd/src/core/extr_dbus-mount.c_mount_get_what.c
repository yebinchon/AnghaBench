
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char const* what; } ;
struct TYPE_5__ {char const* what; } ;
struct TYPE_7__ {TYPE_2__ parameters_fragment; scalar_t__ from_fragment; TYPE_1__ parameters_proc_self_mountinfo; scalar_t__ from_proc_self_mountinfo; } ;
typedef TYPE_3__ Mount ;



__attribute__((used)) static const char *mount_get_what(const Mount *m) {
        if (m->from_proc_self_mountinfo && m->parameters_proc_self_mountinfo.what)
                return m->parameters_proc_self_mountinfo.what;
        if (m->from_fragment && m->parameters_fragment.what)
                return m->parameters_fragment.what;
        return ((void*)0);
}
