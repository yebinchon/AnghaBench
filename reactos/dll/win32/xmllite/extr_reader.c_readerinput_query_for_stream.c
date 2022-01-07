
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int stream; int input; } ;
typedef TYPE_1__ xmlreaderinput ;
typedef scalar_t__ HRESULT ;


 int IID_ISequentialStream ;
 int IID_IStream ;
 scalar_t__ IUnknown_QueryInterface (int ,int *,void**) ;
 scalar_t__ S_OK ;
 int readerinput_release_stream (TYPE_1__*) ;

__attribute__((used)) static inline HRESULT readerinput_query_for_stream(xmlreaderinput *readerinput)
{
    HRESULT hr;

    readerinput_release_stream(readerinput);
    hr = IUnknown_QueryInterface(readerinput->input, &IID_IStream, (void**)&readerinput->stream);
    if (hr != S_OK)
        hr = IUnknown_QueryInterface(readerinput->input, &IID_ISequentialStream, (void**)&readerinput->stream);

    return hr;
}
