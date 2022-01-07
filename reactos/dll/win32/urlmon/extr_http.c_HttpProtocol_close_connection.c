
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * full_header; int * http_negotiate; } ;
typedef int Protocol ;
typedef TYPE_1__ HttpProtocol ;


 int IHttpNegotiate_Release (int *) ;
 int heap_free (int *) ;
 TYPE_1__* impl_from_Protocol (int *) ;

__attribute__((used)) static void HttpProtocol_close_connection(Protocol *prot)
{
    HttpProtocol *This = impl_from_Protocol(prot);

    if(This->http_negotiate) {
        IHttpNegotiate_Release(This->http_negotiate);
        This->http_negotiate = ((void*)0);
    }

    heap_free(This->full_header);
    This->full_header = ((void*)0);
}
