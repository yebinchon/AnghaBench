
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_19__ {int description; int id; scalar_t__ fragment_path; } ;
struct TYPE_17__ {scalar_t__ what; } ;
struct TYPE_16__ {scalar_t__ what; } ;
struct TYPE_18__ {int from_fragment; int exec_context; void* what; TYPE_2__ parameters_proc_swaps; TYPE_1__ parameters_fragment; } ;
typedef TYPE_3__ Swap ;


 int ENOMEM ;
 TYPE_4__* UNIT (TYPE_3__*) ;
 int UNIT_DEPENDENCY_IMPLICIT ;
 int assert (TYPE_3__*) ;
 int path_simplify (void*,int) ;
 void* strdup (scalar_t__) ;
 int swap_add_default_dependencies (TYPE_3__*) ;
 int swap_add_device_dependencies (TYPE_3__*) ;
 int swap_load_devnode (TYPE_3__*) ;
 int unit_add_exec_dependencies (TYPE_4__*,int *) ;
 int unit_name_to_path (int ,void**) ;
 int unit_patch_contexts (TYPE_4__*) ;
 int unit_require_mounts_for (TYPE_4__*,void*,int ) ;
 int unit_set_default_slice (TYPE_4__*) ;
 int unit_set_description (TYPE_4__*,void*) ;

__attribute__((used)) static int swap_add_extras(Swap *s) {
        int r;

        assert(s);

        if (UNIT(s)->fragment_path)
                s->from_fragment = 1;

        if (!s->what) {
                if (s->parameters_fragment.what)
                        s->what = strdup(s->parameters_fragment.what);
                else if (s->parameters_proc_swaps.what)
                        s->what = strdup(s->parameters_proc_swaps.what);
                else {
                        r = unit_name_to_path(UNIT(s)->id, &s->what);
                        if (r < 0)
                                return r;
                }

                if (!s->what)
                        return -ENOMEM;
        }

        path_simplify(s->what, 0);

        if (!UNIT(s)->description) {
                r = unit_set_description(UNIT(s), s->what);
                if (r < 0)
                        return r;
        }

        r = unit_require_mounts_for(UNIT(s), s->what, UNIT_DEPENDENCY_IMPLICIT);
        if (r < 0)
                return r;

        r = swap_add_device_dependencies(s);
        if (r < 0)
                return r;

        r = swap_load_devnode(s);
        if (r < 0)
                return r;

        r = unit_patch_contexts(UNIT(s));
        if (r < 0)
                return r;

        r = unit_add_exec_dependencies(UNIT(s), &s->exec_context);
        if (r < 0)
                return r;

        r = unit_set_default_slice(UNIT(s));
        if (r < 0)
                return r;

        r = swap_add_default_dependencies(s);
        if (r < 0)
                return r;

        return 0;
}
