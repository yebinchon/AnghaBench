
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int * vtbl; } ;
typedef TYPE_2__ stgmed_obj_t ;
struct TYPE_10__ {int IUnknown_iface; } ;
typedef TYPE_3__ stgmed_buf_t ;
struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_11__ {int ref; TYPE_2__ stgmed_obj; TYPE_3__* buf; TYPE_1__ IStream_iface; } ;
typedef TYPE_4__ ProtocolStream ;


 int IUnknown_AddRef (int *) ;
 int ProtocolStreamVtbl ;
 int URLMON_LockModule () ;
 TYPE_4__* heap_alloc (int) ;
 int stgmed_stream_vtbl ;

__attribute__((used)) static stgmed_obj_t *create_stgmed_stream(stgmed_buf_t *buf)
{
    ProtocolStream *ret = heap_alloc(sizeof(ProtocolStream));

    ret->stgmed_obj.vtbl = &stgmed_stream_vtbl;
    ret->IStream_iface.lpVtbl = &ProtocolStreamVtbl;
    ret->ref = 1;

    IUnknown_AddRef(&buf->IUnknown_iface);
    ret->buf = buf;

    URLMON_LockModule();

    return &ret->stgmed_obj;
}
