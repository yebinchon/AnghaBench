
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* desc; } ;
typedef TYPE_2__ vbdisp_t ;
typedef int VARIANT ;
struct TYPE_4__ {int ctx; } ;
typedef int HRESULT ;
typedef int * BSTR ;


 int E_NOTIMPL ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,unsigned int) ;
 int MB_OK ;
 scalar_t__ SUCCEEDED (int ) ;
 int SysFreeString (int *) ;
 int TRACE (char*) ;
 int assert (int) ;
 int show_msgbox (int ,int *,int,int *,int *) ;
 int to_int (int *,int*) ;
 int to_string (int *,int **) ;

__attribute__((used)) static HRESULT Global_MsgBox(vbdisp_t *This, VARIANT *args, unsigned args_cnt, VARIANT *res)
{
    BSTR prompt, title = ((void*)0);
    int type = MB_OK;
    HRESULT hres;

    TRACE("\n");

    assert(1 <= args_cnt && args_cnt <= 5);

    hres = to_string(args, &prompt);
    if(FAILED(hres))
        return hres;

    if(args_cnt > 1)
        hres = to_int(args+1, &type);

    if(SUCCEEDED(hres) && args_cnt > 2)
        hres = to_string(args+2, &title);

    if(SUCCEEDED(hres) && args_cnt > 3) {
        FIXME("unsupported arg_cnt %d\n", args_cnt);
        hres = E_NOTIMPL;
    }

    if(SUCCEEDED(hres))
        hres = show_msgbox(This->desc->ctx, prompt, type, title, res);

    SysFreeString(prompt);
    SysFreeString(title);
    return hres;
}
