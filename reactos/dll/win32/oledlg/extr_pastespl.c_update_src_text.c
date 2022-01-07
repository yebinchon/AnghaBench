
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int * source_name; int * link_source_name; } ;
typedef TYPE_1__ ps_struct_t ;
typedef int WCHAR ;
typedef int HWND ;


 int IDC_PS_SOURCETEXT ;
 int PSF_SELECTPASTE ;
 int SetDlgItemTextW (int ,int ,int *) ;

__attribute__((used)) static void update_src_text(HWND hdlg, const ps_struct_t *ps_struct)
{
    WCHAR *str;

    if(ps_struct->flags & PSF_SELECTPASTE)
    {
        if(ps_struct->source_name)
            str = ps_struct->source_name;
        else
            str = ps_struct->link_source_name;

    }
    else
    {
        if(ps_struct->link_source_name)
            str = ps_struct->link_source_name;
        else
            str = ps_struct->source_name;

    }
    SetDlgItemTextW(hdlg, IDC_PS_SOURCETEXT, str);
}
