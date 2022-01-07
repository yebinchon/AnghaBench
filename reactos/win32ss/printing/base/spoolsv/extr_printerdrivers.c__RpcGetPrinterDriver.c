
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WINSPOOL_PRINTER_HANDLE ;
typedef int WCHAR ;
struct TYPE_2__ {int cbStructureSize; int pInfo; } ;
typedef int PBYTE ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;


 int ASSERT (int) ;
 int AlignRpcPtr (int *,scalar_t__*) ;
 int ERR (char*,scalar_t__) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ GetLastError () ;
 scalar_t__ GetPrinterDriverW (int ,int *,scalar_t__,int ,scalar_t__,scalar_t__*) ;
 int MarshallDownStructure (int ,int ,int ,int ) ;
 scalar_t__ RpcImpersonateClient (int *) ;
 int RpcRevertToSelf () ;
 int TRUE ;
 int UndoAlignRpcPtr (int *,int ,scalar_t__,scalar_t__*) ;
 TYPE_1__** pPrinterDriverMarshalling ;

DWORD
_RpcGetPrinterDriver(WINSPOOL_PRINTER_HANDLE hPrinter, WCHAR* pEnvironment, DWORD Level, BYTE* pDriver, DWORD cbBuf, DWORD* pcbNeeded)
{
    DWORD dwErrorCode;
    PBYTE pDriverAligned;

    dwErrorCode = RpcImpersonateClient(((void*)0));
    if (dwErrorCode != ERROR_SUCCESS)
    {
        ERR("RpcImpersonateClient failed with error %lu!\n", dwErrorCode);
        return dwErrorCode;
    }

    pDriverAligned = AlignRpcPtr(pDriver, &cbBuf);

    if (GetPrinterDriverW(hPrinter, pEnvironment, Level, pDriverAligned, cbBuf, pcbNeeded))
    {

        ASSERT(Level >= 1 && Level <= 3);
        MarshallDownStructure(pDriverAligned, pPrinterDriverMarshalling[Level]->pInfo, pPrinterDriverMarshalling[Level]->cbStructureSize, TRUE);
    }
    else
    {
        dwErrorCode = GetLastError();
    }

    RpcRevertToSelf();
    UndoAlignRpcPtr(pDriver, pDriverAligned, cbBuf, pcbNeeded);

    return dwErrorCode;
}
