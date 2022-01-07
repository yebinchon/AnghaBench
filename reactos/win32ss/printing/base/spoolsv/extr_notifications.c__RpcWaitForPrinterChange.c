
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINSPOOL_PRINTER_HANDLE ;
typedef int DWORD ;


 int ERROR_INVALID_FUNCTION ;
 int UNIMPLEMENTED ;

DWORD
_RpcWaitForPrinterChange(WINSPOOL_PRINTER_HANDLE hPrinter, DWORD Flags, DWORD* pFlags)
{
    UNIMPLEMENTED;
    return ERROR_INVALID_FUNCTION;
}
