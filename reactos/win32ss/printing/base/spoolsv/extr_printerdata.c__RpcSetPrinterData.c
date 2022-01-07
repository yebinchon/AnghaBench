
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINSPOOL_PRINTER_HANDLE ;
typedef int WCHAR ;
typedef int DWORD ;
typedef int BYTE ;


 int _RpcSetPrinterDataEx (int ,char*,int *,int ,int *,int ) ;

DWORD
_RpcSetPrinterData(WINSPOOL_PRINTER_HANDLE hPrinter, WCHAR* pValueName, DWORD Type, BYTE* pData, DWORD cbData)
{
    return _RpcSetPrinterDataEx(hPrinter, L"PrinterDriverData", pValueName, Type, pData, cbData);
}
