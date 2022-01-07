
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINSPOOL_PRINTER_HANDLE ;
typedef int WINSPOOL_HANDLE ;
typedef int DWORD ;
typedef int BYTE ;


 int ERROR_INVALID_FUNCTION ;
 int UNIMPLEMENTED ;

DWORD
_RpcReplyOpenPrinter(WINSPOOL_HANDLE pMachine, WINSPOOL_PRINTER_HANDLE* phPrinterNotify, DWORD dwPrinterRemote, DWORD dwType, DWORD cbBuffer, BYTE* pBuffer)
{
    UNIMPLEMENTED;
    return ERROR_INVALID_FUNCTION;
}
