
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


 int E_NOTIMPL ;
 int E_UNEXPECTED ;
 scalar_t__ FACILITY_VBS ;
 int FIXME (char*) ;
 int HRESULT_CODE (int ) ;
 scalar_t__ HRESULT_FACILITY (int ) ;
 int TRACE (char*) ;
 int return_int (int *,int ) ;

__attribute__((used)) static HRESULT Err_Number(vbdisp_t *This, VARIANT *args, unsigned args_cnt, VARIANT *res)
{
    HRESULT hres;

    TRACE("\n");

    if(!This->desc)
        return E_UNEXPECTED;

    if(args_cnt) {
        FIXME("setter not implemented\n");
        return E_NOTIMPL;
    }

    hres = This->desc->ctx->err_number;
    return return_int(res, HRESULT_FACILITY(hres) == FACILITY_VBS ? HRESULT_CODE(hres) : hres);
}
