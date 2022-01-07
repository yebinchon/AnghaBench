
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
typedef size_t UINT ;
struct TYPE_3__ {size_t unique_actions_count; int * unique_actions; } ;
typedef TYPE_1__ MSIPACKAGE ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int strcmpW (int ,int const*) ;

BOOL msi_action_is_unique( const MSIPACKAGE *package, const WCHAR *action )
{
    UINT i;

    for (i = 0; i < package->unique_actions_count; i++)
    {
        if (!strcmpW( package->unique_actions[i], action )) return TRUE;
    }
    return FALSE;
}
