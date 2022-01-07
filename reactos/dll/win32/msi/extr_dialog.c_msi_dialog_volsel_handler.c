
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int package; } ;
typedef TYPE_1__ msi_dialog ;
struct TYPE_7__ {int attributes; int property; int hwnd; } ;
typedef TYPE_2__ msi_control ;
typedef int WPARAM ;
typedef int WCHAR ;
typedef int UINT ;
typedef int LPWSTR ;
typedef int LPARAM ;
typedef int BOOL ;


 scalar_t__ CBN_SELCHANGE ;
 int CB_ERR ;
 int CB_GETCURSEL ;
 int CB_GETLBTEXT ;
 int ERR (char*) ;
 int ERROR_FUNCTION_FAILED ;
 int ERROR_SUCCESS ;
 scalar_t__ HIWORD (int ) ;
 int MAX_PATH ;
 int SendMessageW (int ,int ,int,int ) ;
 int msi_dialog_dup_property (TYPE_1__*,int ,int) ;
 int msi_dialog_set_property (int ,int ,int *) ;
 int msi_free (int ) ;
 int msidbControlAttributesIndirect ;

__attribute__((used)) static UINT msi_dialog_volsel_handler( msi_dialog *dialog,
                                       msi_control *control, WPARAM param )
{
    WCHAR text[MAX_PATH];
    LPWSTR prop;
    BOOL indirect;
    int index;

    if (HIWORD(param) != CBN_SELCHANGE)
        return ERROR_SUCCESS;

    index = SendMessageW( control->hwnd, CB_GETCURSEL, 0, 0 );
    if ( index == CB_ERR )
    {
        ERR("No ComboBox item selected!\n");
        return ERROR_FUNCTION_FAILED;
    }

    SendMessageW( control->hwnd, CB_GETLBTEXT, index, (LPARAM)text );

    indirect = control->attributes & msidbControlAttributesIndirect;
    prop = msi_dialog_dup_property( dialog, control->property, indirect );

    msi_dialog_set_property( dialog->package, prop, text );

    msi_free( prop );
    return ERROR_SUCCESS;
}
