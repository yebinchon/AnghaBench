
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int msi_dialog ;
typedef int WCHAR ;
typedef int UINT ;
struct TYPE_2__ {int (* handler ) (int *,int const*) ;scalar_t__ event; } ;


 int ERROR_SUCCESS ;
 int FIXME (char*,int ,int ) ;
 int TRACE (char*,int ) ;
 TYPE_1__* control_events ;
 int debugstr_w (int const*) ;
 int strcmpW (scalar_t__,int const*) ;
 int stub1 (int *,int const*) ;

__attribute__((used)) static UINT dialog_event_handler( msi_dialog *dialog, const WCHAR *event, const WCHAR *argument )
{
    unsigned int i;

    TRACE("handling event %s\n", debugstr_w(event));

    if (!event) return ERROR_SUCCESS;

    for (i = 0; control_events[i].event; i++)
    {
        if (!strcmpW( control_events[i].event, event ))
            return control_events[i].handler( dialog, argument );
    }
    FIXME("unhandled event %s arg(%s)\n", debugstr_w(event), debugstr_w(argument));
    return ERROR_SUCCESS;
}
