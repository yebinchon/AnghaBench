
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int WCHAR ;
typedef size_t UINT ;
struct TYPE_9__ {scalar_t__ description; scalar_t__ template; size_t (* handler ) (TYPE_1__*) ;scalar_t__ action_rollback; int * action; } ;
struct TYPE_8__ {int need_rollback; } ;
typedef TYPE_1__ MSIPACKAGE ;
typedef int LPWSTR ;
typedef int LPCWSTR ;


 size_t ERROR_FUNCTION_NOT_CALLED ;
 size_t ERROR_SUCCESS ;
 int FALSE ;
 int FIXME (char*,int ) ;
 int LoadStringW (int ,scalar_t__,int ,int) ;
 int SCRIPT_ROLLBACK ;
 TYPE_6__* StandardActions ;
 int TRACE (char*) ;
 int TRUE ;
 int debugstr_w (int ) ;
 int msi_hInstance ;
 int msi_schedule_action (TYPE_1__*,int ,scalar_t__) ;
 int strcmpW (int *,int ) ;
 size_t stub1 (TYPE_1__*) ;
 int ui_actioninfo (TYPE_1__*,int ,int ,int) ;
 int ui_actionstart (TYPE_1__*,int ,int *,int *) ;

__attribute__((used)) static UINT ACTION_HandleStandardAction(MSIPACKAGE *package, LPCWSTR action)
{
    UINT rc = ERROR_FUNCTION_NOT_CALLED;
    UINT i;

    i = 0;
    while (StandardActions[i].action != ((void*)0))
    {
        if (!strcmpW( StandardActions[i].action, action ))
        {
            WCHAR description[100] = {0}, template[100] = {0};

            if (StandardActions[i].description != 0)
                LoadStringW(msi_hInstance, StandardActions[i].description, (LPWSTR)&description, 100);
            if (StandardActions[i].template != 0)
                LoadStringW(msi_hInstance, StandardActions[i].template, (LPWSTR)&template, 100);

            ui_actionstart(package, action, description, template);
            if (StandardActions[i].handler)
            {
                ui_actioninfo( package, action, TRUE, 0 );
                rc = StandardActions[i].handler( package );
                ui_actioninfo( package, action, FALSE, !rc );

                if (StandardActions[i].action_rollback && !package->need_rollback)
                {
                    TRACE("scheduling rollback action\n");
                    msi_schedule_action( package, SCRIPT_ROLLBACK, StandardActions[i].action_rollback );
                }
            }
            else
            {
                FIXME("unhandled standard action %s\n", debugstr_w(action));
                rc = ERROR_SUCCESS;
            }
            break;
        }
        i++;
    }
    return rc;
}
