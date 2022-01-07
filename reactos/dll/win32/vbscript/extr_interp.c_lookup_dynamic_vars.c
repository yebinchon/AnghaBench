
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * v; } ;
struct TYPE_7__ {TYPE_1__ u; int type; } ;
typedef TYPE_2__ ref_t ;
struct TYPE_8__ {struct TYPE_8__* next; int v; scalar_t__ is_const; int name; } ;
typedef TYPE_3__ dynamic_var_t ;
typedef int WCHAR ;
typedef int BOOL ;


 int FALSE ;
 int REF_CONST ;
 int REF_VAR ;
 int TRUE ;
 int strcmpiW (int ,int const*) ;

__attribute__((used)) static BOOL lookup_dynamic_vars(dynamic_var_t *var, const WCHAR *name, ref_t *ref)
{
    while(var) {
        if(!strcmpiW(var->name, name)) {
            ref->type = var->is_const ? REF_CONST : REF_VAR;
            ref->u.v = &var->v;
            return TRUE;
        }

        var = var->next;
    }

    return FALSE;
}
