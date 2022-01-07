
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINSPOOL_V2_NOTIFY_OPTIONS ;
typedef int WINSPOOL_V2_NOTIFY_INFO ;
typedef int WINSPOOL_PRINTER_HANDLE ;
typedef int DWORD ;


 int ERROR_INVALID_FUNCTION ;
 int UNIMPLEMENTED ;

DWORD
_RpcRouterRefreshPrinterChangeNotification(WINSPOOL_PRINTER_HANDLE hPrinter, DWORD dwColor, WINSPOOL_V2_NOTIFY_OPTIONS* pOptions, WINSPOOL_V2_NOTIFY_INFO** ppInfo)
{
    UNIMPLEMENTED;
    return ERROR_INVALID_FUNCTION;
}
