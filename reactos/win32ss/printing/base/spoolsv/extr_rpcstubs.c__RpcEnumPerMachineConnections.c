
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINSPOOL_HANDLE ;
typedef int DWORD ;
typedef int BYTE ;


 int ERROR_INVALID_FUNCTION ;
 int UNIMPLEMENTED ;

DWORD
_RpcEnumPerMachineConnections(WINSPOOL_HANDLE pServer, BYTE* pPrinterEnum, DWORD cbBuf, DWORD* pcbNeeded, DWORD* pcReturned)
{
    UNIMPLEMENTED;
    return ERROR_INVALID_FUNCTION;
}
