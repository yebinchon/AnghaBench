
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINSPOOL_HANDLE ;
typedef int WCHAR ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;


 int ERR (char*,scalar_t__) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ GetLastError () ;
 int GetPrintProcessorDirectoryW (int ,int *,scalar_t__,int *,scalar_t__,scalar_t__*) ;
 scalar_t__ RpcImpersonateClient (int *) ;
 int RpcRevertToSelf () ;

DWORD
_RpcGetPrintProcessorDirectory(WINSPOOL_HANDLE pName, WCHAR* pEnvironment, DWORD Level, BYTE* pPrintProcessorDirectory, DWORD cbBuf, DWORD* pcbNeeded)
{
    DWORD dwErrorCode;

    dwErrorCode = RpcImpersonateClient(((void*)0));
    if (dwErrorCode != ERROR_SUCCESS)
    {
        ERR("RpcImpersonateClient failed with error %lu!\n", dwErrorCode);
        return dwErrorCode;
    }

    if (!GetPrintProcessorDirectoryW(pName, pEnvironment, Level, pPrintProcessorDirectory, cbBuf, pcbNeeded))
        dwErrorCode = GetLastError();

    RpcRevertToSelf();
    return dwErrorCode;
}
