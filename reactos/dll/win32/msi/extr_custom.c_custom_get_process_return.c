
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;


 int ERROR_FUNCTION_FAILED ;
 int ERROR_SUCCESS ;
 int GetExitCodeProcess (int ,scalar_t__*) ;
 int TRACE (char*,scalar_t__) ;

__attribute__((used)) static UINT custom_get_process_return( HANDLE process )
{
    DWORD rc = 0;

    GetExitCodeProcess( process, &rc );
    TRACE("exit code is %u\n", rc);
    if (rc != 0)
        return ERROR_FUNCTION_FAILED;
    return ERROR_SUCCESS;
}
