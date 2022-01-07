
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Scope ;


 int UNIT (int *) ;
 int scope_add_default_dependencies (int *) ;
 int unit_patch_contexts (int ) ;
 int unit_set_default_slice (int ) ;

__attribute__((used)) static int scope_add_extras(Scope *s) {
        int r;

        r = unit_patch_contexts(UNIT(s));
        if (r < 0)
                return r;

        r = unit_set_default_slice(UNIT(s));
        if (r < 0)
                return r;

        return scope_add_default_dependencies(s);
}
