
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int transient; int perpetual; int default_dependencies; int documentation; scalar_t__ description; } ;
typedef TYPE_1__ Unit ;


 int SPECIAL_INIT_SCOPE ;
 int assert (TYPE_1__*) ;
 scalar_t__ strdup (char*) ;
 int strv_extend (int *,char*) ;
 int unit_has_name (TYPE_1__*,int ) ;

__attribute__((used)) static int scope_load_init_scope(Unit *u) {
        assert(u);

        if (!unit_has_name(u, SPECIAL_INIT_SCOPE))
                return 0;

        u->transient = 1;
        u->perpetual = 1;




        u->default_dependencies = 0;


        if (!u->description)
                u->description = strdup("System and Service Manager");
        if (!u->documentation)
                (void) strv_extend(&u->documentation, "man:systemd(1)");

        return 1;
}
