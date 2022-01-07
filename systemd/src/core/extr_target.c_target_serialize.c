
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_9__ {int state; } ;
typedef TYPE_1__ Target ;
typedef TYPE_1__ FILE ;
typedef TYPE_1__ FDSet ;


 TYPE_1__* TARGET (int *) ;
 int assert (TYPE_1__*) ;
 int serialize_item (TYPE_1__*,char*,int ) ;
 int target_state_to_string (int ) ;

__attribute__((used)) static int target_serialize(Unit *u, FILE *f, FDSet *fds) {
        Target *s = TARGET(u);

        assert(s);
        assert(f);
        assert(fds);

        (void) serialize_item(f, "state", target_state_to_string(s->state));
        return 0;
}
