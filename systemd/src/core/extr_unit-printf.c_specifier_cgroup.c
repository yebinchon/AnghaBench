
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ cgroup_path; } ;
typedef TYPE_1__ Unit ;


 int ENOMEM ;
 int assert (TYPE_1__ const*) ;
 int bad_specifier (TYPE_1__ const*,char) ;
 char* strdup (scalar_t__) ;
 char* unit_default_cgroup_path (TYPE_1__ const*) ;

__attribute__((used)) static int specifier_cgroup(char specifier, const void *data, const void *userdata, char **ret) {
        const Unit *u = userdata;
        char *n;

        assert(u);

        bad_specifier(u, specifier);

        if (u->cgroup_path)
                n = strdup(u->cgroup_path);
        else
                n = unit_default_cgroup_path(u);
        if (!n)
                return -ENOMEM;

        *ret = n;
        return 0;
}
