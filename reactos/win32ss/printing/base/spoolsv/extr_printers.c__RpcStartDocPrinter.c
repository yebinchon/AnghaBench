
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WINSPOOL_PRINTER_HANDLE ;
struct TYPE_4__ {scalar_t__ pDocInfo1; } ;
struct TYPE_5__ {TYPE_1__ DocInfo; int Level; } ;
typedef TYPE_2__ WINSPOOL_DOC_INFO_CONTAINER ;
typedef int PBYTE ;
typedef scalar_t__ DWORD ;


 int ERR (char*,scalar_t__) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ GetLastError () ;
 scalar_t__ RpcImpersonateClient (int *) ;
 int RpcRevertToSelf () ;
 scalar_t__ StartDocPrinterW (int ,int ,int ) ;

DWORD
_RpcStartDocPrinter(WINSPOOL_PRINTER_HANDLE hPrinter, WINSPOOL_DOC_INFO_CONTAINER* pDocInfoContainer, DWORD* pJobId)
{
    DWORD dwErrorCode;

    dwErrorCode = RpcImpersonateClient(((void*)0));
    if (dwErrorCode != ERROR_SUCCESS)
    {
        ERR("RpcImpersonateClient failed with error %lu!\n", dwErrorCode);
        return dwErrorCode;
    }

    *pJobId = StartDocPrinterW(hPrinter, pDocInfoContainer->Level, (PBYTE)pDocInfoContainer->DocInfo.pDocInfo1);
    dwErrorCode = GetLastError();

    RpcRevertToSelf();
    return dwErrorCode;
}
