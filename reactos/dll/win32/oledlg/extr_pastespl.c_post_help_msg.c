
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* ps; } ;
typedef TYPE_2__ ps_struct_t ;
typedef int WPARAM ;
struct TYPE_4__ {int hWndOwner; } ;
typedef scalar_t__ HWND ;


 int IDD_PASTESPECIAL ;
 int PostMessageW (int ,int ,int ,int ) ;
 int oleui_msg_help ;

__attribute__((used)) static void post_help_msg(HWND hdlg, ps_struct_t *ps_struct)
{
    PostMessageW(ps_struct->ps->hWndOwner, oleui_msg_help, (WPARAM)hdlg, IDD_PASTESPECIAL);
}
