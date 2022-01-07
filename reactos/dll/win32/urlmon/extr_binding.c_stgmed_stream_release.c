
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int stgmed_obj_t ;
struct TYPE_2__ {int IStream_iface; } ;
typedef TYPE_1__ ProtocolStream ;


 int IStream_Release (int *) ;

__attribute__((used)) static void stgmed_stream_release(stgmed_obj_t *obj)
{
    ProtocolStream *stream = (ProtocolStream*)obj;
    IStream_Release(&stream->IStream_iface);
}
