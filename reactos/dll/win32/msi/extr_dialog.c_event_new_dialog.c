
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* package; } ;
typedef TYPE_1__ msi_dialog ;
typedef int WCHAR ;
typedef int UINT ;
struct TYPE_6__ {int next_dialog; } ;


 int ERROR_SUCCESS ;
 int msi_dialog_end_dialog (TYPE_1__*) ;
 int msi_event_cleanup_all_subscriptions (TYPE_2__*) ;
 int strdupW (int const*) ;

__attribute__((used)) static UINT event_new_dialog( msi_dialog *dialog, const WCHAR *argument )
{

    dialog->package->next_dialog = strdupW( argument );
    msi_event_cleanup_all_subscriptions( dialog->package );
    msi_dialog_end_dialog( dialog );
    return ERROR_SUCCESS;
}
