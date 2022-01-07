
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINSPOOL_PRINTER_HANDLE ;
typedef int WINSPOOL_FORM_CONTAINER ;
typedef int WCHAR ;
typedef int DWORD ;


 int ERROR_INVALID_FUNCTION ;
 int UNIMPLEMENTED ;

DWORD
_RpcSetForm(WINSPOOL_PRINTER_HANDLE hPrinter, WCHAR* pFormName, WINSPOOL_FORM_CONTAINER* pFormInfoContainer)
{
    UNIMPLEMENTED;
    return ERROR_INVALID_FUNCTION;
}
