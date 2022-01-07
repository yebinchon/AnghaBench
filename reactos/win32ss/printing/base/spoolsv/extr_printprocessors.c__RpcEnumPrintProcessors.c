
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WINSPOOL_HANDLE ;
typedef int WCHAR ;
struct TYPE_2__ {int cbStructureSize; int pInfo; } ;
typedef int PBYTE ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;


 int AlignRpcPtr (int *,scalar_t__*) ;
 int ERR (char*,scalar_t__) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ EnumPrintProcessorsW (int ,int *,scalar_t__,int ,scalar_t__,scalar_t__*,scalar_t__*) ;
 scalar_t__ GetLastError () ;
 int MarshallDownStructuresArray (int ,scalar_t__,int ,int ,int ) ;
 TYPE_1__ PrintProcessorInfo1Marshalling ;
 scalar_t__ RpcImpersonateClient (int *) ;
 int RpcRevertToSelf () ;
 int TRUE ;
 int UndoAlignRpcPtr (int *,int ,scalar_t__,scalar_t__*) ;

DWORD
_RpcEnumPrintProcessors(WINSPOOL_HANDLE pName, WCHAR* pEnvironment, DWORD Level, BYTE* pPrintProcessorInfo, DWORD cbBuf, DWORD* pcbNeeded, DWORD* pcReturned)
{
    DWORD dwErrorCode;
    PBYTE pPrintProcessorInfoAligned;

    dwErrorCode = RpcImpersonateClient(((void*)0));
    if (dwErrorCode != ERROR_SUCCESS)
    {
        ERR("RpcImpersonateClient failed with error %lu!\n", dwErrorCode);
        return dwErrorCode;
    }

    pPrintProcessorInfoAligned = AlignRpcPtr(pPrintProcessorInfo, &cbBuf);

    if (EnumPrintProcessorsW(pName, pEnvironment, Level, pPrintProcessorInfoAligned, cbBuf, pcbNeeded, pcReturned))
    {

        MarshallDownStructuresArray(pPrintProcessorInfoAligned, *pcReturned, PrintProcessorInfo1Marshalling.pInfo, PrintProcessorInfo1Marshalling.cbStructureSize, TRUE);
    }
    else
    {
        dwErrorCode = GetLastError();
    }

    RpcRevertToSelf();
    UndoAlignRpcPtr(pPrintProcessorInfo, pPrintProcessorInfoAligned, cbBuf, pcbNeeded);

    return dwErrorCode;
}
