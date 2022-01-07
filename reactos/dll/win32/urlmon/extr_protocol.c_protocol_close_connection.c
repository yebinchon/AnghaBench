
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ flags; int * post_stream; scalar_t__ connection; scalar_t__ request; TYPE_1__* vtbl; } ;
struct TYPE_5__ {int (* close_connection ) (TYPE_2__*) ;} ;
typedef TYPE_2__ Protocol ;


 int IStream_Release (int *) ;
 int InternetCloseHandle (scalar_t__) ;
 int stub1 (TYPE_2__*) ;

void protocol_close_connection(Protocol *protocol)
{
    protocol->vtbl->close_connection(protocol);

    if(protocol->request)
        InternetCloseHandle(protocol->request);

    if(protocol->connection)
        InternetCloseHandle(protocol->connection);

    if(protocol->post_stream) {
        IStream_Release(protocol->post_stream);
        protocol->post_stream = ((void*)0);
    }

    protocol->flags = 0;
}
