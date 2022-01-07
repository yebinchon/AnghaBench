
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int MSIPACKAGE ;
typedef int LPCWSTR ;
typedef int INT ;


 scalar_t__ ACTION_CustomAction (int *,int ,scalar_t__) ;
 int ACTION_ShowDialog (int *,int ) ;
 scalar_t__ ERROR_FUNCTION_FAILED ;
 scalar_t__ ERROR_FUNCTION_NOT_CALLED ;
 scalar_t__ ERROR_INSTALL_ALREADY_RUNNING ;
 scalar_t__ ERROR_INSTALL_FAILURE ;
 scalar_t__ ERROR_INSTALL_PACKAGE_REJECTED ;
 scalar_t__ ERROR_INSTALL_SUSPEND ;
 scalar_t__ ERROR_INSTALL_USEREXIT ;
 scalar_t__ ERROR_INVALID_DATA ;
 scalar_t__ ERROR_INVALID_HANDLE_STATE ;
 scalar_t__ ERROR_MORE_DATA ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int IDCANCEL ;
 int TRUE ;
 scalar_t__ needs_ui_sequence (int *) ;
 int ui_actioninfo (int *,int ,int ,int) ;
 int ui_actionstart (int *,int ,int *,int *) ;

__attribute__((used)) static UINT ACTION_HandleCustomAction(MSIPACKAGE *package, LPCWSTR action, UINT script)
{
    UINT arc;
    INT uirc;

    uirc = ui_actionstart(package, action, ((void*)0), ((void*)0));
    if (uirc == IDCANCEL)
        return ERROR_INSTALL_USEREXIT;
    ui_actioninfo(package, action, TRUE, 0);
    arc = ACTION_CustomAction( package, action, script );
    uirc = !arc;

    if (arc == ERROR_FUNCTION_NOT_CALLED && needs_ui_sequence(package))
    {
        uirc = ACTION_ShowDialog(package, action);
        switch (uirc)
        {
        case -1:
            return ERROR_SUCCESS;
        case 0: arc = ERROR_FUNCTION_NOT_CALLED; break;
        case 1: arc = ERROR_SUCCESS; break;
        case 2: arc = ERROR_INSTALL_USEREXIT; break;
        case 3: arc = ERROR_INSTALL_FAILURE; break;
        case 4: arc = ERROR_INSTALL_SUSPEND; break;
        case 5: arc = ERROR_MORE_DATA; break;
        case 6: arc = ERROR_INVALID_HANDLE_STATE; break;
        case 7: arc = ERROR_INVALID_DATA; break;
        case 8: arc = ERROR_INSTALL_ALREADY_RUNNING; break;
        case 9: arc = ERROR_INSTALL_PACKAGE_REJECTED; break;
        default: arc = ERROR_FUNCTION_FAILED; break;
        }
    }

    ui_actioninfo(package, action, FALSE, uirc);

    return arc;
}
