
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_5__ {scalar_t__ action_progress_increment; } ;
typedef TYPE_1__ MSIPACKAGE ;


 scalar_t__ ACTION_HandleCustomAction (TYPE_1__*,int const*,scalar_t__) ;
 scalar_t__ ACTION_HandleStandardAction (TYPE_1__*,int const*) ;
 scalar_t__ ERROR_FUNCTION_NOT_CALLED ;
 int TRACE (char*,int ) ;
 int WARN (char*,int ) ;
 int debugstr_w (int const*) ;

UINT ACTION_PerformAction(MSIPACKAGE *package, const WCHAR *action, UINT script)
{
    UINT rc;

    TRACE("Performing action (%s)\n", debugstr_w(action));

    package->action_progress_increment = 0;
    rc = ACTION_HandleStandardAction(package, action);

    if (rc == ERROR_FUNCTION_NOT_CALLED)
        rc = ACTION_HandleCustomAction(package, action, script);

    if (rc == ERROR_FUNCTION_NOT_CALLED)
        WARN("unhandled msi action %s\n", debugstr_w(action));

    return rc;
}
