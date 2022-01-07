
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; scalar_t__ buf_size; TYPE_1__ nsIInputStream_iface; } ;
typedef TYPE_2__ nsProtocolStream ;


 TYPE_2__* heap_alloc (int) ;
 int nsInputStreamVtbl ;

__attribute__((used)) static nsProtocolStream *create_nsprotocol_stream(void)
{
    nsProtocolStream *ret;

    ret = heap_alloc(sizeof(nsProtocolStream));
    if(!ret)
        return ((void*)0);

    ret->nsIInputStream_iface.lpVtbl = &nsInputStreamVtbl;
    ret->ref = 1;
    ret->buf_size = 0;

    return ret;
}
