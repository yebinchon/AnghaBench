
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WINSPOOL_PRINTER_HANDLE ;
typedef int WINSPOOL_HANDLE ;
struct TYPE_5__ {scalar_t__ pDevMode; } ;
typedef TYPE_1__ WINSPOOL_DEVMODE_CONTAINER ;
typedef int WCHAR ;
struct TYPE_6__ {scalar_t__ pDevMode; int * pDatatype; scalar_t__ DesiredAccess; } ;
typedef TYPE_2__ PRINTER_DEFAULTSW ;
typedef scalar_t__ PDEVMODEW ;
typedef scalar_t__ DWORD ;


 int ERR (char*,scalar_t__) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ GetLastError () ;
 int OpenPrinterW (int ,int *,TYPE_2__*) ;
 scalar_t__ RpcImpersonateClient (int *) ;
 int RpcRevertToSelf () ;

DWORD
_RpcOpenPrinter(WINSPOOL_HANDLE pPrinterName, WINSPOOL_PRINTER_HANDLE* phPrinter, WCHAR* pDatatype, WINSPOOL_DEVMODE_CONTAINER* pDevModeContainer, DWORD AccessRequired)
{
    DWORD dwErrorCode;
    PRINTER_DEFAULTSW Default;

    dwErrorCode = RpcImpersonateClient(((void*)0));
    if (dwErrorCode != ERROR_SUCCESS)
    {
        ERR("RpcImpersonateClient failed with error %lu!\n", dwErrorCode);
        return dwErrorCode;
    }

    Default.DesiredAccess = AccessRequired;
    Default.pDatatype = pDatatype;
    Default.pDevMode = (PDEVMODEW)pDevModeContainer->pDevMode;

    if (!OpenPrinterW(pPrinterName, phPrinter, &Default))
        dwErrorCode = GetLastError();

    RpcRevertToSelf();
    return dwErrorCode;
}
