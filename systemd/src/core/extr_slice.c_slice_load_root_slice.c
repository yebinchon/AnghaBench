
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int perpetual; int default_dependencies; scalar_t__ documentation; scalar_t__ description; } ;
typedef TYPE_1__ Unit ;


 int SPECIAL_ROOT_SLICE ;
 int assert (TYPE_1__*) ;
 scalar_t__ strdup (char*) ;
 scalar_t__ strv_new (char*) ;
 int unit_has_name (TYPE_1__*,int ) ;

__attribute__((used)) static int slice_load_root_slice(Unit *u) {
        assert(u);

        if (!unit_has_name(u, SPECIAL_ROOT_SLICE))
                return 0;

        u->perpetual = 1;




        u->default_dependencies = 0;

        if (!u->description)
                u->description = strdup("Root Slice");
        if (!u->documentation)
                u->documentation = strv_new("man:systemd.special(7)");

        return 1;
}
