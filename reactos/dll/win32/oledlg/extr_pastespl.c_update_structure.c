
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int flags; TYPE_1__* ps; } ;
typedef TYPE_2__ ps_struct_t ;
struct TYPE_7__ {int dwScratchSpace; } ;
struct TYPE_5__ {int dwFlags; int fLink; int nSelectedIndex; } ;
typedef TYPE_3__ OLEUIPASTEENTRYW ;
typedef int LONG ;
typedef int HWND ;


 int GetDlgItem (int ,int ) ;
 int IDC_PS_DISPLAYLIST ;
 int LB_GETCURSEL ;
 int LB_GETITEMDATA ;
 int PSF_SELECTPASTELINK ;
 int SendMessageW (int ,int ,int,int ) ;

__attribute__((used)) static void update_structure(HWND hdlg, ps_struct_t *ps_struct)
{
    LONG cur_sel = SendMessageW(GetDlgItem(hdlg, IDC_PS_DISPLAYLIST), LB_GETCURSEL, 0, 0);
    if(cur_sel != -1)
    {
        OLEUIPASTEENTRYW *pent;
        pent = (OLEUIPASTEENTRYW *)SendMessageW(GetDlgItem(hdlg, IDC_PS_DISPLAYLIST), LB_GETITEMDATA, cur_sel, 0);
        ps_struct->ps->nSelectedIndex = pent->dwScratchSpace;
    }
    ps_struct->ps->dwFlags = ps_struct->flags;
    ps_struct->ps->fLink = (ps_struct->flags & PSF_SELECTPASTELINK) != 0;
}
