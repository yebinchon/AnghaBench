
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int msi_dialog ;
struct TYPE_4__ {int property; int handler; int attributes; } ;
typedef TYPE_1__ msi_control ;
typedef int UINT ;
typedef int MSIRECORD ;
typedef int LPCWSTR ;
typedef int DWORD ;


 int CBS_DROPDOWNLIST ;
 int CBS_HASSTRINGS ;
 int CBS_SORT ;
 int ERROR_FUNCTION_FAILED ;
 int ERROR_SUCCESS ;
 int FALSE ;
 int MSI_RecordGetInteger (int *,int) ;
 int MSI_RecordGetString (int *,int) ;
 int WC_COMBOBOXW ;
 int WS_CHILD ;
 int WS_EX_LEFT ;
 int WS_EX_LTRREADING ;
 int WS_EX_RIGHTSCROLLBAR ;
 int WS_GROUP ;
 int WS_TABSTOP ;
 int WS_VISIBLE ;
 TYPE_1__* msi_dialog_add_control (int *,int *,int ,int) ;
 int msi_dialog_dup_property (int *,int ,int ) ;
 int msi_dialog_volsel_handler ;
 int msi_dialog_vsc_add_drives (int *,TYPE_1__*) ;

__attribute__((used)) static UINT msi_dialog_volumeselect_combo( msi_dialog *dialog, MSIRECORD *rec )
{
    msi_control *control;
    LPCWSTR prop;
    DWORD style;


    style = WS_CHILD | WS_VISIBLE | WS_GROUP | WS_TABSTOP |
            CBS_DROPDOWNLIST | CBS_SORT | CBS_HASSTRINGS |
            WS_EX_LEFT | WS_EX_LTRREADING | WS_EX_RIGHTSCROLLBAR;
    control = msi_dialog_add_control( dialog, rec, WC_COMBOBOXW, style );
    if (!control)
        return ERROR_FUNCTION_FAILED;

    control->attributes = MSI_RecordGetInteger( rec, 8 );
    control->handler = msi_dialog_volsel_handler;
    prop = MSI_RecordGetString( rec, 9 );
    control->property = msi_dialog_dup_property( dialog, prop, FALSE );

    msi_dialog_vsc_add_drives( dialog, control );

    return ERROR_SUCCESS;
}
