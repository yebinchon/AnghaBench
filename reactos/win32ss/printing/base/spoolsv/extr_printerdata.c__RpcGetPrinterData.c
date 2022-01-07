
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINSPOOL_PRINTER_HANDLE ;
typedef int WCHAR ;
typedef int DWORD ;
typedef int BYTE ;


 int _RpcGetPrinterDataEx (int ,char*,int *,int *,int *,int ,int *) ;

DWORD
_RpcGetPrinterData(WINSPOOL_PRINTER_HANDLE hPrinter, WCHAR* pValueName, DWORD* pType, BYTE* pData, DWORD nSize, DWORD* pcbNeeded)
{
    return _RpcGetPrinterDataEx(hPrinter, L"PrinterDriverData", pValueName, pType, pData, nSize, pcbNeeded);
}
