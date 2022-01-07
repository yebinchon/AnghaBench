
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int msi_dialog ;
struct TYPE_3__ {int hwnd; } ;
typedef TYPE_1__ msi_control ;
typedef int WCHAR ;
typedef scalar_t__* LPWSTR ;
typedef int LPARAM ;
typedef int DWORD ;


 int CB_ADDSTRING ;
 int GetLogicalDriveStringsW (int,scalar_t__*) ;
 int SendMessageW (int ,int ,int ,int ) ;
 scalar_t__ lstrlenW (scalar_t__*) ;
 scalar_t__* msi_alloc (int) ;
 int msi_free (scalar_t__*) ;

__attribute__((used)) static void msi_dialog_vsc_add_drives( msi_dialog *dialog, msi_control *control )
{
    LPWSTR drives, ptr;
    DWORD size;

    size = GetLogicalDriveStringsW( 0, ((void*)0) );
    if ( !size ) return;

    drives = msi_alloc( (size + 1) * sizeof(WCHAR) );
    if ( !drives ) return;

    GetLogicalDriveStringsW( size, drives );

    ptr = drives;
    while (*ptr)
    {
        SendMessageW( control->hwnd, CB_ADDSTRING, 0, (LPARAM)ptr );
        ptr += lstrlenW(ptr) + 1;
    }

    msi_free( drives );
}
