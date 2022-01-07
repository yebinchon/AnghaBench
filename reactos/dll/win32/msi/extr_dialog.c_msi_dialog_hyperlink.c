
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int msi_dialog ;
struct TYPE_4__ {int hwnd; int handler; int attributes; } ;
typedef TYPE_1__ msi_control ;
typedef int WCHAR ;
typedef int UINT ;
struct TYPE_5__ {int mask; scalar_t__* szUrl; void* stateMask; void* state; scalar_t__ iLink; } ;
typedef int MSIRECORD ;
typedef int LPARAM ;
typedef TYPE_2__ LITEM ;
typedef int DWORD ;


 int ERROR_FUNCTION_FAILED ;
 int ERROR_SUCCESS ;
 int LIF_ITEMINDEX ;
 int LIF_STATE ;
 int LIF_URL ;
 void* LIS_ENABLED ;
 int LM_SETITEM ;
 int L_MAX_URL_LENGTH ;
 int MSI_RecordGetInteger (int *,int) ;
 int * MSI_RecordGetString (int *,int) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int WC_LINK ;
 int WS_CHILD ;
 int WS_GROUP ;
 int WS_TABSTOP ;
 TYPE_1__* msi_dialog_add_control (int *,int *,int ,int) ;
 int msi_dialog_hyperlink_handler ;
 int strcpyW (scalar_t__*,int const*) ;
 int strlenW (int const*) ;

__attribute__((used)) static UINT msi_dialog_hyperlink( msi_dialog *dialog, MSIRECORD *rec )
{
    msi_control *control;
    DWORD style = WS_CHILD | WS_TABSTOP | WS_GROUP;
    const WCHAR *text = MSI_RecordGetString( rec, 10 );
    int len = strlenW( text );
    LITEM item;

    control = msi_dialog_add_control( dialog, rec, WC_LINK, style );
    if (!control)
        return ERROR_FUNCTION_FAILED;

    control->attributes = MSI_RecordGetInteger( rec, 8 );
    control->handler = msi_dialog_hyperlink_handler;

    item.mask = LIF_ITEMINDEX | LIF_STATE | LIF_URL;
    item.iLink = 0;
    item.state = LIS_ENABLED;
    item.stateMask = LIS_ENABLED;
    if (len < L_MAX_URL_LENGTH) strcpyW( item.szUrl, text );
    else item.szUrl[0] = 0;

    SendMessageW( control->hwnd, LM_SETITEM, 0, (LPARAM)&item );

    return ERROR_SUCCESS;
}
