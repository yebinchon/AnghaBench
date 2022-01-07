
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_9__ {int state; } ;
typedef TYPE_1__ Slice ;
typedef TYPE_1__ FILE ;


 TYPE_1__* SLICE (int *) ;
 int UNIT (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int cgroup_context_dump (int ,TYPE_1__*,char const*) ;
 int fprintf (TYPE_1__*,char*,char const*,char*) ;
 char* slice_state_to_string (int ) ;

__attribute__((used)) static void slice_dump(Unit *u, FILE *f, const char *prefix) {
        Slice *t = SLICE(u);

        assert(t);
        assert(f);

        fprintf(f,
                "%sSlice State: %s\n",
                prefix, slice_state_to_string(t->state));

        cgroup_context_dump(UNIT(t), f, prefix);
}
