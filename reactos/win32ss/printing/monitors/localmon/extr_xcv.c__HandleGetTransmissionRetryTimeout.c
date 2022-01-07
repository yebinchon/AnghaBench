
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* PDWORD ;
typedef int PBYTE ;
typedef int DWORD ;


 int CopyMemory (int ,int*,int) ;
 int ERROR_INSUFFICIENT_BUFFER ;
 int ERROR_INVALID_PARAMETER ;
 int ERROR_SUCCESS ;
 int GetLPTTransmissionRetryTimeout () ;

__attribute__((used)) static DWORD
_HandleGetTransmissionRetryTimeout(PBYTE pOutputData, DWORD cbOutputData, PDWORD pcbOutputNeeded)
{
    DWORD dwTimeout;


    if (!pOutputData || !pcbOutputNeeded)
        return ERROR_INVALID_PARAMETER;

    *pcbOutputNeeded = sizeof(DWORD);


    if (cbOutputData < *pcbOutputNeeded)
        return ERROR_INSUFFICIENT_BUFFER;


    dwTimeout = GetLPTTransmissionRetryTimeout();
    CopyMemory(pOutputData, &dwTimeout, sizeof(DWORD));
    return ERROR_SUCCESS;
}
