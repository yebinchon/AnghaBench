
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINSPOOL_HANDLE ;
typedef int WCHAR ;
typedef int DWORD ;


 int ERROR_INVALID_FUNCTION ;
 int UNIMPLEMENTED ;

DWORD
_RpcDeletePrinterDriver(WINSPOOL_HANDLE pName, WCHAR* pEnvironment, WCHAR* pDriverName)
{
    UNIMPLEMENTED;
    return ERROR_INVALID_FUNCTION;
}
