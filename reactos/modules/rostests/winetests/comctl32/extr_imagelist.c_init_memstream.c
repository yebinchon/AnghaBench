
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * lpVtbl; } ;
struct memstream {int stream; TYPE_1__ IStream_iface; } ;
typedef scalar_t__ HRESULT ;


 scalar_t__ CreateStreamOnHGlobal (int *,int ,int *) ;
 scalar_t__ S_OK ;
 int TRUE ;
 int Test_Stream_Vtbl ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void init_memstream(struct memstream *stream)
{
    HRESULT hr;

    stream->IStream_iface.lpVtbl = &Test_Stream_Vtbl;
    hr = CreateStreamOnHGlobal(((void*)0), TRUE, &stream->stream);
    ok(hr == S_OK, "Failed to create a stream, hr %#x.\n", hr);
}
