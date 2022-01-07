
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int script_ctx_t ;
typedef int VARIANT ;
struct TYPE_3__ {int * member_0; } ;
typedef int IDispatch ;
typedef int HRESULT ;
typedef TYPE_1__ DISPPARAMS ;


 int DISPID_VALUE ;
 int disp_call (int *,int *,int ,TYPE_1__*,int *) ;

HRESULT get_disp_value(script_ctx_t *ctx, IDispatch *disp, VARIANT *v)
{
    DISPPARAMS dp = {((void*)0)};
    return disp_call(ctx, disp, DISPID_VALUE, &dp, v);
}
