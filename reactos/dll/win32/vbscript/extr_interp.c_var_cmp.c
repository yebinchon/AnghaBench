
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* script; } ;
typedef TYPE_2__ exec_ctx_t ;
typedef int VARIANT ;
struct TYPE_4__ {int lcid; } ;
typedef int HRESULT ;


 int TRACE (char*,int ,int ) ;
 int VarCmp (int *,int *,int ,int ) ;
 int debugstr_variant (int *) ;

__attribute__((used)) static HRESULT var_cmp(exec_ctx_t *ctx, VARIANT *l, VARIANT *r)
{
    TRACE("%s %s\n", debugstr_variant(l), debugstr_variant(r));



    return VarCmp(l, r, ctx->script->lcid, 0);
 }
