
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* manager; } ;
typedef TYPE_2__ Unit ;
struct TYPE_5__ {int cgroup_root; } ;


 int ENOMEM ;
 int assert (TYPE_2__ const*) ;
 int bad_specifier (TYPE_2__ const*,char) ;
 char* strdup (int ) ;

__attribute__((used)) static int specifier_cgroup_root(char specifier, const void *data, const void *userdata, char **ret) {
        const Unit *u = userdata;
        char *n;

        assert(u);

        bad_specifier(u, specifier);

        n = strdup(u->manager->cgroup_root);
        if (!n)
                return -ENOMEM;

        *ret = n;
        return 0;
}
