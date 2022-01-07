
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* manager; scalar_t__ cgroup_path; int slice; } ;
typedef TYPE_2__ Unit ;
struct TYPE_7__ {scalar_t__ cgroup_root; } ;


 int ENOMEM ;
 TYPE_2__* UNIT_DEREF (int ) ;
 scalar_t__ UNIT_ISSET (int ) ;
 int assert (TYPE_2__ const*) ;
 int bad_specifier (TYPE_2__ const*,char) ;
 char* strdup (scalar_t__) ;
 char* unit_default_cgroup_path (TYPE_2__ const*) ;

__attribute__((used)) static int specifier_cgroup_slice(char specifier, const void *data, const void *userdata, char **ret) {
        const Unit *u = userdata;
        char *n;

        assert(u);

        bad_specifier(u, specifier);

        if (UNIT_ISSET(u->slice)) {
                const Unit *slice;

                slice = UNIT_DEREF(u->slice);

                if (slice->cgroup_path)
                        n = strdup(slice->cgroup_path);
                else
                        n = unit_default_cgroup_path(slice);
        } else
                n = strdup(u->manager->cgroup_root);
        if (!n)
                return -ENOMEM;

        *ret = n;
        return 0;
}
