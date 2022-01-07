
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINSPOOL_V2_NOTIFY_OPTIONS ;
typedef int WINSPOOL_PRINTER_HANDLE ;
typedef int WCHAR ;
typedef int DWORD ;


 int ERROR_INVALID_FUNCTION ;
 int UNIMPLEMENTED ;

DWORD
_RpcRemoteFindFirstPrinterChangeNotificationEx(WINSPOOL_PRINTER_HANDLE hPrinter, DWORD fdwFlags, DWORD fdwOptions, WCHAR* pszLocalMachine, DWORD dwPrinterLocal, WINSPOOL_V2_NOTIFY_OPTIONS* pOptions)
{
    UNIMPLEMENTED;
    return ERROR_INVALID_FUNCTION;
}
