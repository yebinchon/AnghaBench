
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINSPOOL_PORT_CONTAINER ;
typedef int WINSPOOL_HANDLE ;
typedef int WCHAR ;
typedef int DWORD ;


 int ERROR_INVALID_FUNCTION ;
 int UNIMPLEMENTED ;

DWORD
_RpcSetPort(WINSPOOL_HANDLE pName, WCHAR* pPortName, WINSPOOL_PORT_CONTAINER* pPortContainer)
{
    UNIMPLEMENTED;
    return ERROR_INVALID_FUNCTION;
}
