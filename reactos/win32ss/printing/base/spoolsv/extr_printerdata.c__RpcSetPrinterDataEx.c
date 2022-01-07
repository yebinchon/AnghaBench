
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINSPOOL_PRINTER_HANDLE ;
typedef int WCHAR ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;


 int ERR (char*,scalar_t__) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ RpcImpersonateClient (int *) ;
 int RpcRevertToSelf () ;
 scalar_t__ SetPrinterDataExW (int ,int const*,int const*,scalar_t__,int *,scalar_t__) ;

DWORD
_RpcSetPrinterDataEx(WINSPOOL_PRINTER_HANDLE hPrinter, const WCHAR* pKeyName, const WCHAR* pValueName, DWORD Type, BYTE* pData, DWORD cbData)
{
    DWORD dwErrorCode;

    dwErrorCode = RpcImpersonateClient(((void*)0));
    if (dwErrorCode != ERROR_SUCCESS)
    {
        ERR("RpcImpersonateClient failed with error %lu!\n", dwErrorCode);
        return dwErrorCode;
    }

    dwErrorCode = SetPrinterDataExW(hPrinter, pKeyName, pValueName, Type, pData, cbData);

    RpcRevertToSelf();

    return dwErrorCode;
}
