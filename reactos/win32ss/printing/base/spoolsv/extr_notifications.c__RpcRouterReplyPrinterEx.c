
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINSPOOL_V2_UREPLY_PRINTER ;
typedef int WINSPOOL_PRINTER_HANDLE ;
typedef int DWORD ;


 int ERROR_INVALID_FUNCTION ;
 int UNIMPLEMENTED ;

DWORD
_RpcRouterReplyPrinterEx(WINSPOOL_PRINTER_HANDLE hNotify, DWORD dwColor, DWORD fdwFlags, DWORD* pdwResult, DWORD dwReplyType, WINSPOOL_V2_UREPLY_PRINTER Reply)
{
    UNIMPLEMENTED;
    return ERROR_INVALID_FUNCTION;
}
