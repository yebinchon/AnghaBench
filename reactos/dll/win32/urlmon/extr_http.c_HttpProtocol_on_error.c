
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flags; } ;
typedef TYPE_1__ Protocol ;
typedef int HttpProtocol ;
typedef int HRESULT ;
typedef int DWORD ;


 int ERROR_IO_PENDING ;
 int ERROR_SUCCESS ;
 int FIXME (char*,int ) ;
 int FLAG_FIRST_CONTINUE_COMPLETE ;
 int RPC_E_RETRY ;
 int TRACE (char*,TYPE_1__*,int ) ;
 int handle_http_error (int *,int ) ;
 int * impl_from_Protocol (TYPE_1__*) ;
 int protocol_abort (TYPE_1__*,int ) ;
 int protocol_close_connection (TYPE_1__*) ;
 int send_http_request (int *) ;

__attribute__((used)) static void HttpProtocol_on_error(Protocol *prot, DWORD error)
{
    HttpProtocol *This = impl_from_Protocol(prot);
    HRESULT hres;

    TRACE("(%p) %d\n", prot, error);

    if(prot->flags & FLAG_FIRST_CONTINUE_COMPLETE) {
        FIXME("Not handling error %d\n", error);
        return;
    }

    while((hres = handle_http_error(This, error)) == RPC_E_RETRY) {
        error = send_http_request(This);

        if(error == ERROR_IO_PENDING || error == ERROR_SUCCESS)
            return;
    }

    protocol_abort(prot, hres);
    protocol_close_connection(prot);
    return;
}
