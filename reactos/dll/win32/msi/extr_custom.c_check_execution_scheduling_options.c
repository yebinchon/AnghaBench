
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {int InWhatSequence; } ;
typedef TYPE_1__ MSIPACKAGE ;
typedef int LPCWSTR ;
typedef int BOOL ;


 int FALSE ;
 int SEQUENCE_EXEC ;
 int SEQUENCE_UI ;
 int TRACE (char*) ;
 int TRUE ;
 scalar_t__ msi_action_is_unique (TYPE_1__*,int ) ;
 int msi_register_unique_action (TYPE_1__*,int ) ;
 int msidbCustomActionTypeClientRepeat ;
 int msidbCustomActionTypeFirstSequence ;
 int msidbCustomActionTypeOncePerProcess ;

__attribute__((used)) static BOOL check_execution_scheduling_options(MSIPACKAGE *package, LPCWSTR action, UINT options)
{
    if ((options & msidbCustomActionTypeClientRepeat) ==
            msidbCustomActionTypeClientRepeat)
    {
        if (!(package->InWhatSequence & SEQUENCE_UI &&
            package->InWhatSequence & SEQUENCE_EXEC))
        {
            TRACE("Skipping action due to dbCustomActionTypeClientRepeat option.\n");
            return FALSE;
        }
    }
    else if (options & msidbCustomActionTypeFirstSequence)
    {
        if (package->InWhatSequence & SEQUENCE_UI &&
            package->InWhatSequence & SEQUENCE_EXEC )
        {
            TRACE("Skipping action due to msidbCustomActionTypeFirstSequence option.\n");
            return FALSE;
        }
    }
    else if (options & msidbCustomActionTypeOncePerProcess)
    {
        if (msi_action_is_unique(package, action))
        {
            TRACE("Skipping action due to msidbCustomActionTypeOncePerProcess option.\n");
            return FALSE;
        }
        else
            msi_register_unique_action(package, action);
    }

    return TRUE;
}
