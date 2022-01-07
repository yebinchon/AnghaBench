
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ retval; int package; } ;
typedef TYPE_1__ msi_dialog ;
typedef int WCHAR ;
typedef int UINT ;
typedef scalar_t__ INT ;


 int ERROR_SUCCESS ;
 int FALSE ;
 scalar_t__ event_do_dialog (int ,int const*,TYPE_1__*,int ) ;
 int msi_dialog_end_dialog (TYPE_1__*) ;
 int msi_dialog_update_all_controls (TYPE_1__*) ;

__attribute__((used)) static UINT event_spawn_dialog( msi_dialog *dialog, const WCHAR *argument )
{
    INT r;

    r = event_do_dialog( dialog->package, argument, dialog, FALSE );
    if (r != 0)
    {
        dialog->retval = r;
        msi_dialog_end_dialog( dialog );
    }
    else
        msi_dialog_update_all_controls(dialog);

    return ERROR_SUCCESS;
}
