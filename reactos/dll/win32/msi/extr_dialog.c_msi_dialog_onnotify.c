
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int msi_dialog ;
struct TYPE_5__ {int (* handler ) (int *,TYPE_1__*,int ) ;} ;
typedef TYPE_1__ msi_control ;
struct TYPE_6__ {int hwndFrom; } ;
typedef int LRESULT ;
typedef TYPE_2__* LPNMHDR ;
typedef int LPARAM ;


 int TRACE (char*,int *,int ) ;
 TYPE_1__* msi_dialog_find_control_by_hwnd (int *,int ) ;
 int stub1 (int *,TYPE_1__*,int ) ;

__attribute__((used)) static LRESULT msi_dialog_onnotify( msi_dialog *dialog, LPARAM param )
{
    LPNMHDR nmhdr = (LPNMHDR) param;
    msi_control *control = msi_dialog_find_control_by_hwnd( dialog, nmhdr->hwndFrom );

    TRACE("%p %p\n", dialog, nmhdr->hwndFrom);

    if ( control && control->handler )
        control->handler( dialog, control, param );

    return 0;
}
