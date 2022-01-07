
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_9__ {int state; } ;
typedef TYPE_1__ Slice ;
typedef TYPE_1__ FILE ;
typedef TYPE_1__ FDSet ;


 TYPE_1__* SLICE (int *) ;
 int assert (TYPE_1__*) ;
 int serialize_item (TYPE_1__*,char*,int ) ;
 int slice_state_to_string (int ) ;

__attribute__((used)) static int slice_serialize(Unit *u, FILE *f, FDSet *fds) {
        Slice *s = SLICE(u);

        assert(s);
        assert(f);
        assert(fds);

        (void) serialize_item(f, "state", slice_state_to_string(s->state));

        return 0;
}
