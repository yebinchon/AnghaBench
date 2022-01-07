
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int const WCHAR ;
struct TYPE_4__ {int const* next_dialog; } ;
typedef TYPE_1__ MSIPACKAGE ;
typedef int INT ;


 int ERR (char*) ;
 int TRUE ;
 int event_do_dialog (TYPE_1__*,int const*,int *,int ) ;
 int msi_free (int const*) ;

INT ACTION_DialogBox( MSIPACKAGE *package, const WCHAR *dialog )
{
    INT r;

    if (package->next_dialog) ERR("Already got next dialog... ignoring it\n");
    package->next_dialog = ((void*)0);






    r = event_do_dialog( package, dialog, ((void*)0), TRUE );
    while (package->next_dialog)
    {
        WCHAR *name = package->next_dialog;

        package->next_dialog = ((void*)0);
        r = event_do_dialog( package, name, ((void*)0), TRUE );
        msi_free( name );
    }
    return r;
}
