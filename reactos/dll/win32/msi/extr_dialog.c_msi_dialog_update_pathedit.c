
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int msi_dialog ;
struct TYPE_4__ {int attributes; int hwnd; int property; } ;
typedef TYPE_1__ msi_control ;
typedef int LPWSTR ;
typedef int BOOL ;


 int EM_SETSEL ;
 int SendMessageW (int ,int ,int ,int) ;
 int SetWindowTextW (int ,int ) ;
 int TRUE ;
 int msi_dialog_dup_property (int *,int ,int) ;
 TYPE_1__* msi_dialog_find_control_by_type (int *,int ) ;
 int msi_free (int ) ;
 int msidbControlAttributesIndirect ;
 int szPathEdit ;

__attribute__((used)) static void msi_dialog_update_pathedit( msi_dialog *dialog, msi_control *control )
{
    LPWSTR prop, path;
    BOOL indirect;

    if (!control && !(control = msi_dialog_find_control_by_type( dialog, szPathEdit )))
       return;

    indirect = control->attributes & msidbControlAttributesIndirect;
    prop = msi_dialog_dup_property( dialog, control->property, indirect );
    path = msi_dialog_dup_property( dialog, prop, TRUE );

    SetWindowTextW( control->hwnd, path );
    SendMessageW( control->hwnd, EM_SETSEL, 0, -1 );

    msi_free( path );
    msi_free( prop );
}
