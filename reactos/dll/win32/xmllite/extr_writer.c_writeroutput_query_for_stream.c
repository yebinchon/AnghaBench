
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int stream; int output; } ;
typedef TYPE_1__ xmlwriteroutput ;
typedef scalar_t__ HRESULT ;


 int IID_ISequentialStream ;
 int IID_IStream ;
 scalar_t__ IUnknown_QueryInterface (int ,int *,void**) ;
 scalar_t__ S_OK ;
 int writeroutput_release_stream (TYPE_1__*) ;

__attribute__((used)) static inline HRESULT writeroutput_query_for_stream(xmlwriteroutput *writeroutput)
{
    HRESULT hr;

    writeroutput_release_stream(writeroutput);
    hr = IUnknown_QueryInterface(writeroutput->output, &IID_IStream, (void**)&writeroutput->stream);
    if (hr != S_OK)
        hr = IUnknown_QueryInterface(writeroutput->output, &IID_ISequentialStream, (void**)&writeroutput->stream);

    return hr;
}
