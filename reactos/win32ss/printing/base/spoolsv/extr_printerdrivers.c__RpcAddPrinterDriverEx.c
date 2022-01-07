
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINSPOOL_HANDLE ;
typedef int WINSPOOL_DRIVER_CONTAINER ;
typedef int DWORD ;


 int ERROR_INVALID_FUNCTION ;
 int UNIMPLEMENTED ;

DWORD
_RpcAddPrinterDriverEx(WINSPOOL_HANDLE pName, WINSPOOL_DRIVER_CONTAINER* pDriverContainer, DWORD dwFileCopyFlags)
{
    UNIMPLEMENTED;
    return ERROR_INVALID_FUNCTION;
}
