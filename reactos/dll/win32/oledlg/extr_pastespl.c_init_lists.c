
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int ps; } ;
typedef TYPE_1__ ps_struct_t ;
typedef scalar_t__ UINT ;
typedef int HWND ;
typedef int DWORD ;


 int CheckRadioButton (int ,scalar_t__,scalar_t__,scalar_t__) ;
 int EnableWindow (int ,int ) ;
 int GetDlgItem (int ,int ) ;
 scalar_t__ IDC_PS_PASTE ;
 scalar_t__ IDC_PS_PASTELINK ;
 scalar_t__ IDC_PS_PASTELINKLIST ;
 scalar_t__ IDC_PS_PASTELIST ;
 int IDOK ;
 int PSF_SELECTPASTE ;
 int PSF_SELECTPASTELINK ;
 int init_linklist (int ,int ) ;
 int init_pastelist (int ,int ) ;
 int update_display_list (int ,scalar_t__) ;

__attribute__((used)) static void init_lists(HWND hdlg, ps_struct_t *ps_struct)
{
    DWORD pastes_added = init_pastelist(hdlg, ps_struct->ps);
    DWORD links_added = init_linklist(hdlg, ps_struct->ps);
    UINT check_id, list_id;

    if((ps_struct->flags & (PSF_SELECTPASTE | PSF_SELECTPASTELINK)) == 0)
        ps_struct->flags |= PSF_SELECTPASTE;

    if(!pastes_added && !links_added)
        ps_struct->flags &= ~(PSF_SELECTPASTE | PSF_SELECTPASTELINK);
    else if(!pastes_added && (ps_struct->flags & PSF_SELECTPASTE))
    {
        ps_struct->flags &= ~PSF_SELECTPASTE;
        ps_struct->flags |= PSF_SELECTPASTELINK;
    }
    else if(!links_added && (ps_struct->flags & PSF_SELECTPASTELINK))
    {
        ps_struct->flags &= ~PSF_SELECTPASTELINK;
        ps_struct->flags |= PSF_SELECTPASTE;
    }

    check_id = 0;
    list_id = 0;
    if(ps_struct->flags & PSF_SELECTPASTE)
    {
        check_id = IDC_PS_PASTE;
        list_id = IDC_PS_PASTELIST;
    }
    else if(ps_struct->flags & PSF_SELECTPASTELINK)
    {
        check_id = IDC_PS_PASTELINK;
        list_id = IDC_PS_PASTELINKLIST;
    }

    CheckRadioButton(hdlg, IDC_PS_PASTE, IDC_PS_PASTELINK, check_id);

    if(list_id)
        update_display_list(hdlg, list_id);
    else
        EnableWindow(GetDlgItem(hdlg, IDOK), 0);
}
