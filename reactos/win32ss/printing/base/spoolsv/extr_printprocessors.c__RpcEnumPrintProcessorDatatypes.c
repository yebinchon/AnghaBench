
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
 TYPE_1__ DatatypesInfo1Marshalling ;
 int ERR (char*,scalar_t__) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ EnumPrintProcessorDatatypesW (int ,int *,scalar_t__,int ,scalar_t__,scalar_t__*,scalar_t__*) ;
 scalar_t__ GetLastError () ;
 int MarshallDownStructuresArray (int ,scalar_t__,int ,int ,int ) ;
 scalar_t__ RpcImpersonateClient (int *) ;
 int RpcRevertToSelf () ;
 int TRUE ;
 int UndoAlignRpcPtr (int *,int ,scalar_t__,scalar_t__*) ;

DWORD
_RpcEnumPrintProcessorDatatypes(WINSPOOL_HANDLE pName, WCHAR* pPrintProcessorName, DWORD Level, BYTE* pDatatypes, DWORD cbBuf, DWORD* pcbNeeded, DWORD* pcReturned)
{
    DWORD dwErrorCode;
    PBYTE pDatatypesAligned;

    dwErrorCode = RpcImpersonateClient(((void*)0));
    if (dwErrorCode != ERROR_SUCCESS)
    {
        ERR("RpcImpersonateClient failed with error %lu!\n", dwErrorCode);
        return dwErrorCode;
    }

    pDatatypesAligned = AlignRpcPtr(pDatatypes, &cbBuf);

    if (EnumPrintProcessorDatatypesW(pName, pPrintProcessorName, Level, pDatatypesAligned, cbBuf, pcbNeeded, pcReturned))
    {

        MarshallDownStructuresArray(pDatatypesAligned, *pcReturned, DatatypesInfo1Marshalling.pInfo, DatatypesInfo1Marshalling.cbStructureSize, TRUE);
    }
    else
    {
        dwErrorCode = GetLastError();
    }

    RpcRevertToSelf();
    UndoAlignRpcPtr(pDatatypes, pDatatypesAligned, cbBuf, pcbNeeded);

    return dwErrorCode;
}
