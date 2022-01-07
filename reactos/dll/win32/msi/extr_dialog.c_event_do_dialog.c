
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int retval; } ;
typedef TYPE_1__ msi_dialog ;
typedef int WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_11__ {TYPE_1__* dialog; } ;
typedef TYPE_2__ MSIPACKAGE ;
typedef int INT ;
typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_SUCCESS ;
 int IDOK ;
 TYPE_1__* dialog_create (TYPE_2__*,int const*,TYPE_1__*,int ) ;
 int dialog_event_handler ;
 scalar_t__ dialog_run_message_loop (TYPE_1__*) ;
 int msi_dialog_destroy (TYPE_1__*) ;

__attribute__((used)) static INT event_do_dialog( MSIPACKAGE *package, const WCHAR *name, msi_dialog *parent, BOOL destroy_modeless )
{
    msi_dialog *dialog;
    UINT r;
    INT retval;


    dialog = dialog_create( package, name, parent, dialog_event_handler );
    if (dialog)
    {

        if (destroy_modeless && package->dialog)
        {
            msi_dialog_destroy( package->dialog );
            package->dialog = ((void*)0);
        }


        r = dialog_run_message_loop( dialog );
        if (r == ERROR_SUCCESS)
        {
            retval = dialog->retval;
            msi_dialog_destroy( dialog );
            return retval;
        }
        else
        {
            package->dialog = dialog;
            return IDOK;
        }
    }
    else return 0;
}
