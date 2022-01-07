
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ load_state; } ;
typedef TYPE_1__ Unit ;
typedef int Service ;


 int * SERVICE (TYPE_1__*) ;
 scalar_t__ UNIT_LOADED ;
 int service_add_extras (int *) ;
 int service_verify (int *) ;
 int unit_load_fragment_and_dropin (TYPE_1__*,int) ;

__attribute__((used)) static int service_load(Unit *u) {
        Service *s = SERVICE(u);
        int r;

        r = unit_load_fragment_and_dropin(u, 1);
        if (r < 0)
                return r;

        if (u->load_state != UNIT_LOADED)
                return 0;


        r = service_add_extras(s);
        if (r < 0)
                return r;

        return service_verify(s);
}
