
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ ps_struct_t ;
typedef scalar_t__ UINT ;
typedef int HWND ;


 scalar_t__ IDC_PS_PASTE ;
 int IDC_PS_PASTELINKLIST ;
 int IDC_PS_PASTELIST ;
 int PSF_SELECTPASTE ;
 int PSF_SELECTPASTELINK ;
 int selection_change (int ,TYPE_1__*) ;
 int update_display_list (int ,int ) ;
 int update_src_text (int ,TYPE_1__*) ;

__attribute__((used)) static void mode_change(HWND hdlg, ps_struct_t *ps_struct, UINT id)
{
    if(id == IDC_PS_PASTE)
    {
        ps_struct->flags &= ~PSF_SELECTPASTELINK;
        ps_struct->flags |= PSF_SELECTPASTE;
    }
    else
    {
        ps_struct->flags &= ~PSF_SELECTPASTE;
        ps_struct->flags |= PSF_SELECTPASTELINK;
    }

    update_src_text(hdlg, ps_struct);
    update_display_list(hdlg, id == IDC_PS_PASTE ? IDC_PS_PASTELIST : IDC_PS_PASTELINKLIST);
    selection_change(hdlg, ps_struct);
}
