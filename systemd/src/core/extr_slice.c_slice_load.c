
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ load_state; } ;
typedef TYPE_1__ Unit ;
typedef int Slice ;


 int * SLICE (TYPE_1__*) ;
 scalar_t__ UNIT_LOADED ;
 scalar_t__ UNIT_STUB ;
 int assert (int) ;
 int slice_add_default_dependencies (int *) ;
 int slice_add_parent_slice (int *) ;
 int slice_load_root_slice (TYPE_1__*) ;
 int slice_load_system_slice (TYPE_1__*) ;
 int slice_verify (int *) ;
 int unit_load_fragment_and_dropin (TYPE_1__*,int) ;
 int unit_patch_contexts (TYPE_1__*) ;

__attribute__((used)) static int slice_load(Unit *u) {
        Slice *s = SLICE(u);
        int r;

        assert(s);
        assert(u->load_state == UNIT_STUB);

        r = slice_load_root_slice(u);
        if (r < 0)
                return r;
        r = slice_load_system_slice(u);
        if (r < 0)
                return r;

        r = unit_load_fragment_and_dropin(u, 0);
        if (r < 0)
                return r;

        if (u->load_state != UNIT_LOADED)
                return 0;


        r = unit_patch_contexts(u);
        if (r < 0)
                return r;

        r = slice_add_parent_slice(s);
        if (r < 0)
                return r;

        r = slice_add_default_dependencies(s);
        if (r < 0)
                return r;

        return slice_verify(s);
}
