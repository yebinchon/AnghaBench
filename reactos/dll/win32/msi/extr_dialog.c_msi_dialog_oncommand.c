
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int control_cancel; int control_default; } ;
typedef TYPE_1__ msi_dialog ;
struct TYPE_13__ {int (* handler ) (TYPE_1__*,TYPE_2__*,int) ;} ;
typedef TYPE_2__ msi_control ;
typedef int WPARAM ;
typedef int LRESULT ;
typedef int HWND ;


 int TRACE (char*,TYPE_1__*,int ,int) ;
 int msi_dialog_evaluate_control_conditions (TYPE_1__*) ;
 TYPE_2__* msi_dialog_find_control (TYPE_1__*,int ) ;
 TYPE_2__* msi_dialog_find_control_by_hwnd (TYPE_1__*,int ) ;
 int stub1 (TYPE_1__*,TYPE_2__*,int) ;

__attribute__((used)) static LRESULT msi_dialog_oncommand( msi_dialog *dialog, WPARAM param, HWND hwnd )
{
    msi_control *control = ((void*)0);

    TRACE("%p %p %08lx\n", dialog, hwnd, param);

    switch (param)
    {
    case 1:
        control = msi_dialog_find_control( dialog, dialog->control_default );
        break;
    case 2:
        control = msi_dialog_find_control( dialog, dialog->control_cancel );
        break;
    default:
        control = msi_dialog_find_control_by_hwnd( dialog, hwnd );
    }

    if( control )
    {
        if( control->handler )
        {
            control->handler( dialog, control, param );
            msi_dialog_evaluate_control_conditions( dialog );
        }
    }

    return 0;
}
