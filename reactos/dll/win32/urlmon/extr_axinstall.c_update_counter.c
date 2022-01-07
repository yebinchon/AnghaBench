
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ counter; int timer; } ;
typedef TYPE_1__ install_ctx_t ;
typedef int WCHAR ;
typedef int HWND ;


 int ARRAY_SIZE (int *) ;
 int EnableWindow (int ,int ) ;
 int GetDlgItem (int ,int ) ;
 int IDS_AXINSTALL_INSTALL ;
 int IDS_AXINSTALL_INSTALLN ;
 int ID_AXINSTALL_INSTALL_BTN ;
 int KillTimer (int ,int ) ;
 int LoadStringW (int ,int ,int *,int ) ;
 int SetDlgItemTextW (int ,int ,int *) ;
 int TRUE ;
 int sprintfW (int *,int *,scalar_t__) ;
 int urlmon_instance ;

__attribute__((used)) static void update_counter(install_ctx_t *ctx, HWND hwnd)
{
    WCHAR text[100];

    if(--ctx->counter <= 0) {
        HWND button_hwnd;

        KillTimer(hwnd, ctx->timer);
        LoadStringW(urlmon_instance, IDS_AXINSTALL_INSTALL, text, ARRAY_SIZE(text));

        button_hwnd = GetDlgItem(hwnd, ID_AXINSTALL_INSTALL_BTN);
        EnableWindow(button_hwnd, TRUE);
    }else {
        WCHAR buf[100];
        LoadStringW(urlmon_instance, IDS_AXINSTALL_INSTALLN, buf, ARRAY_SIZE(buf));
        sprintfW(text, buf, ctx->counter);
    }

    SetDlgItemTextW(hwnd, ID_AXINSTALL_INSTALL_BTN, text);
}
