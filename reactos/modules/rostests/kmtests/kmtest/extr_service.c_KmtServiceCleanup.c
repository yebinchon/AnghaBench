
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BOOLEAN ;


 int CloseServiceHandle (scalar_t__) ;
 int ERROR_SUCCESS ;
 scalar_t__ ScmHandle ;
 int error (int ) ;

DWORD
KmtServiceCleanup(
    BOOLEAN IgnoreErrors)
{
    DWORD Error = ERROR_SUCCESS;

    if (ScmHandle && !CloseServiceHandle(ScmHandle) && !IgnoreErrors)
        error(Error);

    return Error;
}
