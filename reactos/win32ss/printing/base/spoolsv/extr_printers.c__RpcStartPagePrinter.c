
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINSPOOL_PRINTER_HANDLE ;
typedef scalar_t__ DWORD ;


 int ERR (char*,scalar_t__) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ GetLastError () ;
 scalar_t__ RpcImpersonateClient (int *) ;
 int RpcRevertToSelf () ;
 int StartPagePrinter (int ) ;

DWORD
_RpcStartPagePrinter(WINSPOOL_PRINTER_HANDLE hPrinter)
{
    DWORD dwErrorCode;

    dwErrorCode = RpcImpersonateClient(((void*)0));
    if (dwErrorCode != ERROR_SUCCESS)
    {
        ERR("RpcImpersonateClient failed with error %lu!\n", dwErrorCode);
        return dwErrorCode;
    }

    if (!StartPagePrinter(hPrinter))
        dwErrorCode = GetLastError();

    RpcRevertToSelf();
    return dwErrorCode;
}
