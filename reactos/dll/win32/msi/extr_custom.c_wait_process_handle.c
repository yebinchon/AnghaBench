
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int MSIPACKAGE ;
typedef int LPCWSTR ;
typedef int HANDLE ;


 int CloseHandle (int ) ;
 int ERROR_SUCCESS ;
 int TRACE (char*,int ) ;
 int TRUE ;
 int custom_get_process_return (int ) ;
 int debugstr_w (int ) ;
 int file_running_action (int *,int ,int ,int ) ;
 int msi_dialog_check_messages (int ) ;
 int msidbCustomActionTypeAsync ;
 int msidbCustomActionTypeContinue ;

__attribute__((used)) static UINT wait_process_handle(MSIPACKAGE* package, UINT type,
                           HANDLE ProcessHandle, LPCWSTR name)
{
    UINT rc = ERROR_SUCCESS;

    if (!(type & msidbCustomActionTypeAsync))
    {
        TRACE("waiting for %s\n", debugstr_w(name));

        msi_dialog_check_messages(ProcessHandle);

        if (!(type & msidbCustomActionTypeContinue))
            rc = custom_get_process_return(ProcessHandle);

        CloseHandle(ProcessHandle);
    }
    else
    {
        TRACE("%s running in background\n", debugstr_w(name));

        if (!(type & msidbCustomActionTypeContinue))
            file_running_action(package, ProcessHandle, TRUE, name);
        else
            CloseHandle(ProcessHandle);
    }

    return rc;
}
