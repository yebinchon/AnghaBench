
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msi_dialog ;
typedef int WCHAR ;
typedef int UINT ;


 int ERROR_SUCCESS ;
 int msi_dialog_reset (int *) ;

__attribute__((used)) static UINT event_reset( msi_dialog *dialog, const WCHAR *argument )
{
    msi_dialog_reset( dialog );
    return ERROR_SUCCESS;
}
