
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * v; int owned; } ;
typedef TYPE_1__ variant_val_t ;
typedef int exec_ctx_t ;
typedef int VARIANT ;


 int FALSE ;
 int TRUE ;
 int VT_BYREF ;
 int VT_VARIANT ;
 int * V_VARIANTREF (int *) ;
 int V_VT (int *) ;
 int * stack_pop (int *) ;

__attribute__((used)) static void stack_pop_deref(exec_ctx_t *ctx, variant_val_t *r)
{
    VARIANT *v;

    v = stack_pop(ctx);
    if(V_VT(v) == (VT_BYREF|VT_VARIANT)) {
        r->owned = FALSE;
        r->v = V_VARIANTREF(v);
    }else {
        r->owned = TRUE;
        r->v = v;
    }
}
