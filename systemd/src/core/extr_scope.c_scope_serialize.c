
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_10__ {scalar_t__ controller; int was_abandoned; int state; } ;
typedef TYPE_1__ Scope ;
typedef TYPE_1__ FILE ;
typedef TYPE_1__ FDSet ;


 TYPE_1__* SCOPE (int *) ;
 int assert (TYPE_1__*) ;
 scalar_t__ scope_state_to_string (int ) ;
 int serialize_bool (TYPE_1__*,char*,int ) ;
 int serialize_item (TYPE_1__*,char*,scalar_t__) ;

__attribute__((used)) static int scope_serialize(Unit *u, FILE *f, FDSet *fds) {
        Scope *s = SCOPE(u);

        assert(s);
        assert(f);
        assert(fds);

        (void) serialize_item(f, "state", scope_state_to_string(s->state));
        (void) serialize_bool(f, "was-abandoned", s->was_abandoned);

        if (s->controller)
                (void) serialize_item(f, "controller", s->controller);

        return 0;
}
