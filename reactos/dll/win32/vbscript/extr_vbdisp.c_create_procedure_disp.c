
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int main_code; } ;
typedef TYPE_1__ vbscode_t ;
struct TYPE_12__ {int IDispatchEx_iface; } ;
typedef TYPE_2__ vbdisp_t ;
struct TYPE_13__ {TYPE_4__* procs; } ;
typedef TYPE_3__ script_ctx_t ;
struct TYPE_14__ {struct TYPE_14__* next; int * value_func; int builtin_props; int builtin_prop_cnt; TYPE_3__* ctx; } ;
typedef TYPE_4__ class_desc_t ;
typedef int IDispatch ;
typedef int HRESULT ;


 int ARRAY_SIZE (int ) ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int create_vbdisp (TYPE_4__*,TYPE_2__**) ;
 TYPE_4__* heap_alloc_zero (int) ;
 int heap_free (TYPE_4__*) ;
 int procedure_props ;

HRESULT create_procedure_disp(script_ctx_t *ctx, vbscode_t *code, IDispatch **ret)
{
    class_desc_t *desc;
    vbdisp_t *vbdisp;
    HRESULT hres;

    desc = heap_alloc_zero(sizeof(*desc));
    if(!desc)
        return E_OUTOFMEMORY;

    desc->ctx = ctx;
    desc->builtin_prop_cnt = ARRAY_SIZE(procedure_props);
    desc->builtin_props = procedure_props;
    desc->value_func = &code->main_code;

    hres = create_vbdisp(desc, &vbdisp);
    if(FAILED(hres)) {
        heap_free(desc);
        return hres;
    }

    desc->next = ctx->procs;
    ctx->procs = desc;

    *ret = (IDispatch*)&vbdisp->IDispatchEx_iface;
    return S_OK;
}
