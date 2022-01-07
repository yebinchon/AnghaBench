
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ptrdiff_t ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ ps_struct_t ;
typedef char WCHAR ;
typedef int UINT ;
struct TYPE_5__ {char* lpstrResultText; } ;
typedef TYPE_2__ OLEUIPASTEENTRYW ;
typedef int LONG ;
typedef int HWND ;


 int ARRAY_SIZE (char*) ;
 int GetDlgItem (int ,int ) ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,size_t) ;
 int HeapFree (int ,int ,char*) ;
 int IDC_PS_DISPLAYLIST ;
 int IDC_PS_RESULTTEXT ;
 int IDS_PS_PASTE_DATA ;
 int IDS_PS_PASTE_LINK_DATA ;
 int IDS_PS_PASTE_LINK_OBJECT_AS_ICON ;
 int IDS_PS_PASTE_OBJECT_AS_ICON ;
 int LB_GETCURSEL ;
 int LB_GETITEMDATA ;
 int LoadStringW (int ,int ,char*,int ) ;
 int OLEDLG_hInstance ;
 int PSF_CHECKDISPLAYASICON ;
 int PSF_SELECTPASTE ;
 int SendMessageW (int ,int ,int,int ) ;
 int SetDlgItemTextW (int ,int ,char*) ;
 int memcpy (char*,char*,int) ;
 int strlenW (char*) ;
 char* strstrW (char*,char const*) ;

__attribute__((used)) static void update_result_text(HWND hdlg, const ps_struct_t *ps_struct)
{
    WCHAR resource_txt[200];
    UINT res_id;
    OLEUIPASTEENTRYW *pent;
    LONG cur_sel;
    static const WCHAR percent_s[] = {'%','s',0};
    WCHAR *result_txt, *ptr;

    cur_sel = SendMessageW(GetDlgItem(hdlg, IDC_PS_DISPLAYLIST), LB_GETCURSEL, 0, 0);
    if(cur_sel == -1) return;
    pent = (OLEUIPASTEENTRYW*)SendMessageW(GetDlgItem(hdlg, IDC_PS_DISPLAYLIST), LB_GETITEMDATA, cur_sel, 0);

    if(ps_struct->flags & PSF_SELECTPASTE)
    {
        if(ps_struct->flags & PSF_CHECKDISPLAYASICON)
            res_id = IDS_PS_PASTE_OBJECT_AS_ICON;
        else
            res_id = IDS_PS_PASTE_DATA;
    }
    else
    {
        if(ps_struct->flags & PSF_CHECKDISPLAYASICON)
            res_id = IDS_PS_PASTE_LINK_OBJECT_AS_ICON;
        else
            res_id = IDS_PS_PASTE_LINK_DATA;
    }

    LoadStringW(OLEDLG_hInstance, res_id, resource_txt, ARRAY_SIZE(resource_txt));
    if((ptr = strstrW(resource_txt, percent_s)))
    {

        size_t result_txt_len = strlenW(pent->lpstrResultText);
        ptrdiff_t offs = (char*)ptr - (char*)resource_txt;
        result_txt = HeapAlloc(GetProcessHeap(), 0, (strlenW(resource_txt) + result_txt_len - 1) * sizeof(WCHAR));
        memcpy(result_txt, resource_txt, offs);
        memcpy((char*)result_txt + offs, pent->lpstrResultText, result_txt_len * sizeof(WCHAR));
        memcpy((char*)result_txt + offs + result_txt_len * sizeof(WCHAR), ptr + 2, (strlenW(ptr + 2) + 1) * sizeof(WCHAR));
    }
    else
        result_txt = resource_txt;

    SetDlgItemTextW(hdlg, IDC_PS_RESULTTEXT, result_txt);

    if(result_txt != resource_txt)
        HeapFree(GetProcessHeap(), 0, result_txt);

}
