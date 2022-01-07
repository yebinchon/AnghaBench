
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int counter; int timer; int uri; } ;
typedef TYPE_1__ install_ctx_t ;
typedef int WPARAM ;
typedef int WCHAR ;
typedef int HWND ;
typedef int HRESULT ;
typedef int BSTR ;
typedef int BOOL ;


 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int ID_AXINSTALL_ICON ;
 int ID_AXINSTALL_LOCATION ;
 int IUri_GetDisplayUri (int ,int *) ;
 scalar_t__ LoadIconW (int ,int const*) ;
 scalar_t__ OIC_WARNING ;
 int STM_SETICON ;
 int SendDlgItemMessageW (int ,int ,int ,int ,int ) ;
 int SetDlgItemTextW (int ,int ,int ) ;
 int SetPropW (int ,int ,TYPE_1__*) ;
 int SetTimer (int ,int,int,int *) ;
 int SysFreeString (int ) ;
 int TRUE ;
 int ctxW ;
 int update_counter (TYPE_1__*,int ) ;

__attribute__((used)) static BOOL init_warning_dialog(HWND hwnd, install_ctx_t *ctx)
{
    BSTR display_uri;
    HRESULT hres;

    if(!SetPropW(hwnd, ctxW, ctx))
        return FALSE;

    hres = IUri_GetDisplayUri(ctx->uri, &display_uri);
    if(FAILED(hres))
        return FALSE;

    SetDlgItemTextW(hwnd, ID_AXINSTALL_LOCATION, display_uri);
    SysFreeString(display_uri);

    SendDlgItemMessageW(hwnd, ID_AXINSTALL_ICON, STM_SETICON,
            (WPARAM)LoadIconW(0, (const WCHAR*)OIC_WARNING), 0);

    ctx->counter = 4;
    update_counter(ctx, hwnd);
    ctx->timer = SetTimer(hwnd, 1, 1000, ((void*)0));
    return TRUE;
}
