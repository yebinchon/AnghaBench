
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ load_state; int manager; int transient; } ;
typedef TYPE_1__ Unit ;
typedef int Scope ;


 int ENOENT ;
 int MANAGER_IS_RELOADING (int ) ;
 int * SCOPE (TYPE_1__*) ;
 scalar_t__ UNIT_LOADED ;
 scalar_t__ UNIT_STUB ;
 int assert (int) ;
 int scope_add_extras (int *) ;
 int scope_load_init_scope (TYPE_1__*) ;
 int scope_verify (int *) ;
 int unit_load_fragment_and_dropin (TYPE_1__*,int) ;

__attribute__((used)) static int scope_load(Unit *u) {
        Scope *s = SCOPE(u);
        int r;

        assert(s);
        assert(u->load_state == UNIT_STUB);

        if (!u->transient && !MANAGER_IS_RELOADING(u->manager))

                return -ENOENT;

        r = scope_load_init_scope(u);
        if (r < 0)
                return r;

        r = unit_load_fragment_and_dropin(u, 0);
        if (r < 0)
                return r;

        if (u->load_state != UNIT_LOADED)
                return 0;

        r = scope_add_extras(s);
        if (r < 0)
                return r;

        return scope_verify(s);
}
