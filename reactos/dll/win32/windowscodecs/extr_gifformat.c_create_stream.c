
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IStream ;
typedef int HRESULT ;
typedef int HGLOBAL ;


 int CreateStreamOnHGlobal (int ,int ,int **) ;
 scalar_t__ FAILED (int ) ;
 int GMEM_MOVEABLE ;
 int GlobalAlloc (int ,int) ;
 void* GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 int TRUE ;
 int memcpy (void*,void const*,int) ;

__attribute__((used)) static IStream *create_stream(const void *data, int data_size)
{
    HRESULT hr;
    IStream *stream;
    HGLOBAL hdata;
    void *locked_data;

    hdata = GlobalAlloc(GMEM_MOVEABLE, data_size);
    if (!hdata) return ((void*)0);

    locked_data = GlobalLock(hdata);
    memcpy(locked_data, data, data_size);
    GlobalUnlock(hdata);

    hr = CreateStreamOnHGlobal(hdata, TRUE, &stream);
    return FAILED(hr) ? ((void*)0) : stream;
}
