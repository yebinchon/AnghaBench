
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINSPOOL_PRINTER_HANDLE ;
typedef int WCHAR ;
typedef int DWORD ;
typedef int BYTE ;


 int ERROR_INVALID_FUNCTION ;
 int UNIMPLEMENTED ;

DWORD
_RpcEnumPrinterDataEx(WINSPOOL_PRINTER_HANDLE hPrinter, const WCHAR* pKeyName, BYTE* pEnumValues, DWORD cbEnumValues, DWORD* pcbEnumValues, DWORD* pnEnumValues)
{
    UNIMPLEMENTED;
    return ERROR_INVALID_FUNCTION;
}
