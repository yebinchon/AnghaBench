
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* desc; } ;
typedef TYPE_3__ vbdisp_t ;
typedef int VARIANT ;
struct TYPE_6__ {TYPE_1__* ctx; } ;
struct TYPE_5__ {int err_number; } ;
typedef int HRESULT ;


 int E_UNEXPECTED ;
 int S_OK ;
 int TRACE (char*) ;

__attribute__((used)) static HRESULT Err_Clear(vbdisp_t *This, VARIANT *args, unsigned args_cnt, VARIANT *res)
{
    TRACE("\n");

    if(!This->desc)
        return E_UNEXPECTED;

    This->desc->ctx->err_number = S_OK;
    return S_OK;
}
