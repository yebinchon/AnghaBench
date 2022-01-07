
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ hFile; int pwszPortName; int * pwszMapping; } ;
typedef int PWSTR ;
typedef TYPE_1__* PLOCALMON_PORT ;


 int CloseHandle (scalar_t__) ;
 int DDD_REMOVE_DEFINITION ;
 int DefineDosDeviceW (int ,int ,int *) ;
 int DllFreeSplMem (int ) ;
 int DllFreeSplStr (int *) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ GetPortNameWithoutColon (int ,int *) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ _GetNonspooledPortName (int ,int *) ;

__attribute__((used)) static void
_ClosePortHandles(PLOCALMON_PORT pPort)
{
    PWSTR pwszNonspooledPortName;
    PWSTR pwszPortNameWithoutColon;


    if (pPort->hFile == INVALID_HANDLE_VALUE)
        return;


    CloseHandle(pPort->hFile);
    pPort->hFile = INVALID_HANDLE_VALUE;


    if (!pPort->pwszMapping)
        return;


    DllFreeSplStr(pPort->pwszMapping);
    pPort->pwszMapping = ((void*)0);


    if (GetPortNameWithoutColon(pPort->pwszPortName, &pwszPortNameWithoutColon) == ERROR_SUCCESS)
    {
        if (_GetNonspooledPortName(pwszPortNameWithoutColon, &pwszNonspooledPortName) == ERROR_SUCCESS)
        {
            DefineDosDeviceW(DDD_REMOVE_DEFINITION, pwszNonspooledPortName, ((void*)0));
            DllFreeSplMem(pwszNonspooledPortName);
        }

        DllFreeSplMem(pwszPortNameWithoutColon);
    }
}
