
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int typeinfo; void* builtin_props; void* builtin_prop_cnt; TYPE_1__* ctx; } ;
struct TYPE_5__ {int err_obj; TYPE_3__ err_desc; int script_obj; int global_obj; TYPE_3__ global_desc; } ;
typedef TYPE_1__ script_ctx_t ;
typedef int HRESULT ;


 void* ARRAY_SIZE (void*) ;
 int ErrObj_tid ;
 scalar_t__ FAILED (int ) ;
 int GlobalObj_tid ;
 int create_script_disp (TYPE_1__*,int *) ;
 int create_vbdisp (TYPE_3__*,int *) ;
 void* err_props ;
 int get_typeinfo (int ,int *) ;
 void* global_props ;

HRESULT init_global(script_ctx_t *ctx)
{
    HRESULT hres;

    ctx->global_desc.ctx = ctx;
    ctx->global_desc.builtin_prop_cnt = ARRAY_SIZE(global_props);
    ctx->global_desc.builtin_props = global_props;

    hres = get_typeinfo(GlobalObj_tid, &ctx->global_desc.typeinfo);
    if(FAILED(hres))
        return hres;

    hres = create_vbdisp(&ctx->global_desc, &ctx->global_obj);
    if(FAILED(hres))
        return hres;

    hres = create_script_disp(ctx, &ctx->script_obj);
    if(FAILED(hres))
        return hres;

    ctx->err_desc.ctx = ctx;
    ctx->err_desc.builtin_prop_cnt = ARRAY_SIZE(err_props);
    ctx->err_desc.builtin_props = err_props;

    hres = get_typeinfo(ErrObj_tid, &ctx->err_desc.typeinfo);
    if(FAILED(hres))
        return hres;

    return create_vbdisp(&ctx->err_desc, &ctx->err_obj);
}
