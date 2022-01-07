
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; int action; int handle; int package; } ;
typedef TYPE_1__ msi_custom_action_info ;
typedef int UINT ;


 int ERROR_SUCCESS ;
 int TRACE (char*,int ) ;
 int custom_get_thread_return (int ,int ) ;
 int debugstr_w (int ) ;
 int msi_dialog_check_messages (int ) ;
 int msidbCustomActionTypeAsync ;
 int msidbCustomActionTypeContinue ;
 int release_custom_action_data (TYPE_1__*) ;

__attribute__((used)) static UINT wait_thread_handle( msi_custom_action_info *info )
{
    UINT rc = ERROR_SUCCESS;

    if (!(info->type & msidbCustomActionTypeAsync))
    {
        TRACE("waiting for %s\n", debugstr_w( info->action ));

        msi_dialog_check_messages( info->handle );

        if (!(info->type & msidbCustomActionTypeContinue))
            rc = custom_get_thread_return( info->package, info->handle );

        release_custom_action_data( info );
    }
    else
    {
        TRACE("%s running in background\n", debugstr_w( info->action ));
    }

    return rc;
}
