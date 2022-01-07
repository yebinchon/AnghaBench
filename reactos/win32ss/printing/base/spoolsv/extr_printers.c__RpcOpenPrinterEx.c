
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINSPOOL_SPLCLIENT_CONTAINER ;
typedef int WINSPOOL_PRINTER_HANDLE ;
typedef int WINSPOOL_HANDLE ;
typedef int WINSPOOL_DEVMODE_CONTAINER ;
typedef int WCHAR ;
typedef int DWORD ;


 int ERROR_INVALID_FUNCTION ;
 int UNIMPLEMENTED ;

DWORD
_RpcOpenPrinterEx(WINSPOOL_HANDLE pPrinterName, WINSPOOL_PRINTER_HANDLE* pHandle, WCHAR* pDatatype, WINSPOOL_DEVMODE_CONTAINER* pDevModeContainer, DWORD AccessRequired, WINSPOOL_SPLCLIENT_CONTAINER* pClientInfo)
{
    UNIMPLEMENTED;
    return ERROR_INVALID_FUNCTION;
}
