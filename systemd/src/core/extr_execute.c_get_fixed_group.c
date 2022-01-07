
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int gid_t ;
struct TYPE_4__ {char* group; } ;
typedef TYPE_1__ ExecContext ;


 int assert (TYPE_1__ const*) ;
 int get_group_creds (char const**,int *,int ) ;

__attribute__((used)) static int get_fixed_group(const ExecContext *c, const char **group, gid_t *gid) {
        int r;
        const char *name;

        assert(c);

        if (!c->group)
                return 0;

        name = c->group;
        r = get_group_creds(&name, gid, 0);
        if (r < 0)
                return r;

        *group = name;
        return 0;
}
