
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msi_dialog ;
typedef int WCHAR ;
typedef int UINT ;


 int msi_dialog_directorylist_up (int *) ;

__attribute__((used)) static UINT event_directory_list_up( msi_dialog *dialog, const WCHAR *argument )
{
    return msi_dialog_directorylist_up( dialog );
}
