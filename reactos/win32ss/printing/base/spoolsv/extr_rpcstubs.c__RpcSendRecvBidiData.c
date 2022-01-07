
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINSPOOL_PRINTER_HANDLE ;
typedef int WINSPOOL_BIDI_RESPONSE_CONTAINER ;
typedef int WINSPOOL_BIDI_REQUEST_CONTAINER ;
typedef int WCHAR ;
typedef int DWORD ;


 int ERROR_INVALID_FUNCTION ;
 int UNIMPLEMENTED ;

DWORD
_RpcSendRecvBidiData(WINSPOOL_PRINTER_HANDLE hPrinter, const WCHAR* pAction, WINSPOOL_BIDI_REQUEST_CONTAINER* pReqData, WINSPOOL_BIDI_RESPONSE_CONTAINER** ppRespData)
{
    UNIMPLEMENTED;
    return ERROR_INVALID_FUNCTION;
}
