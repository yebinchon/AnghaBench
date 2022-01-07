
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pending_argument; int pending_event; } ;
typedef TYPE_1__ msi_dialog ;
typedef int WCHAR ;
typedef int UINT ;


 int ERROR_SUCCESS ;
 int event_end_dialog ;
 int msi_free (int ) ;
 int strdupW (int const*) ;

__attribute__((used)) static UINT pending_event_end_dialog( msi_dialog *dialog, const WCHAR *argument )
{
    dialog->pending_event = event_end_dialog;
    msi_free( dialog->pending_argument );
    dialog->pending_argument = strdupW( argument );
    return ERROR_SUCCESS;
}
