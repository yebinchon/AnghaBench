
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msi_dialog ;
typedef int msi_control ;
typedef int UINT ;
typedef int MSIRECORD ;
typedef int DWORD ;


 int ERROR_FUNCTION_FAILED ;
 int ERROR_SUCCESS ;
 int LVS_AUTOARRANGE ;
 int LVS_REPORT ;
 int LVS_SHAREIMAGELISTS ;
 int LVS_SINGLESEL ;
 int WC_LISTVIEWW ;
 int WS_BORDER ;
 int WS_CHILD ;
 int WS_GROUP ;
 int WS_HSCROLL ;
 int WS_TABSTOP ;
 int WS_VSCROLL ;
 int * msi_dialog_add_control (int *,int *,int ,int) ;
 int msi_dialog_vcl_add_columns (int *,int *,int *) ;
 int msi_dialog_vcl_add_drives (int *,int *) ;

__attribute__((used)) static UINT msi_dialog_volumecost_list( msi_dialog *dialog, MSIRECORD *rec )
{
    msi_control *control;
    DWORD style;

    style = LVS_REPORT | WS_VSCROLL | WS_HSCROLL | LVS_SHAREIMAGELISTS |
            LVS_AUTOARRANGE | LVS_SINGLESEL | WS_BORDER |
            WS_CHILD | WS_TABSTOP | WS_GROUP;
    control = msi_dialog_add_control( dialog, rec, WC_LISTVIEWW, style );
    if (!control)
        return ERROR_FUNCTION_FAILED;

    msi_dialog_vcl_add_columns( dialog, control, rec );
    msi_dialog_vcl_add_drives( dialog, control );

    return ERROR_SUCCESS;
}
