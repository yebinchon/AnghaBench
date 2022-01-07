
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* PDWORD ;
typedef int PCWSTR ;
typedef scalar_t__ PBYTE ;
typedef int * PBOOL ;
typedef int DWORD ;
typedef int BOOL ;


 int DoesPortExist (int ) ;
 int ERROR_INSUFFICIENT_BUFFER ;
 int ERROR_INVALID_PARAMETER ;
 int GetLastError () ;

__attribute__((used)) static DWORD
_HandlePortExists(PBYTE pInputData, PBYTE pOutputData, DWORD cbOutputData, PDWORD pcbOutputNeeded)
{

    if (!pInputData || !pOutputData || !pcbOutputNeeded)
        return ERROR_INVALID_PARAMETER;

    *pcbOutputNeeded = sizeof(BOOL);


    if (cbOutputData < *pcbOutputNeeded)
        return ERROR_INSUFFICIENT_BUFFER;


    *(PBOOL)pOutputData = DoesPortExist((PCWSTR)pInputData);
    return GetLastError();
}
