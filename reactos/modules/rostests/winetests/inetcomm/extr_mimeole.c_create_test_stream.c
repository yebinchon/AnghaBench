
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_2__ IStream_iface; scalar_t__ pos; } ;
typedef TYPE_1__ TestStream ;
typedef TYPE_2__ IStream ;


 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int StreamVtbl ;

__attribute__((used)) static IStream *create_test_stream(void)
{
    TestStream *stream;
    stream = HeapAlloc(GetProcessHeap(), 0, sizeof(*stream));
    stream->IStream_iface.lpVtbl = &StreamVtbl;
    stream->ref = 1;
    stream->pos = 0;
    return &stream->IStream_iface;
}
