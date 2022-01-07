
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* PDWORD ;
typedef int PCWSTR ;
typedef scalar_t__ PBYTE ;
typedef int LPCOMMCONFIG ;
typedef int DWORD ;
typedef int COMMCONFIG ;


 int ERROR_INSUFFICIENT_BUFFER ;
 int ERROR_INVALID_PARAMETER ;
 int ERROR_SUCCESS ;
 int GetDefaultCommConfigW (int ,int ,int*) ;
 int GetLastError () ;

__attribute__((used)) static DWORD
_HandleGetDefaultCommConfig(PBYTE pInputData, PBYTE pOutputData, DWORD cbOutputData, PDWORD pcbOutputNeeded)
{

    if (!pInputData || !pcbOutputNeeded)
        return ERROR_INVALID_PARAMETER;

    *pcbOutputNeeded = sizeof(COMMCONFIG);


    if (cbOutputData < *pcbOutputNeeded)
        return ERROR_INSUFFICIENT_BUFFER;


    if (!GetDefaultCommConfigW((PCWSTR)pInputData, (LPCOMMCONFIG)pOutputData, pcbOutputNeeded))
        return GetLastError();

    return ERROR_SUCCESS;
}
