
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int package; } ;
typedef TYPE_1__ msi_dialog ;
typedef int WCHAR ;
typedef int UINT ;


 int ACTION_PerformAction (int ,int const*,int ) ;
 int ERROR_SUCCESS ;
 int SCRIPT_NONE ;

__attribute__((used)) static UINT event_do_action( msi_dialog *dialog, const WCHAR *argument )
{
    ACTION_PerformAction( dialog->package, argument, SCRIPT_NONE );
    return ERROR_SUCCESS;
}
