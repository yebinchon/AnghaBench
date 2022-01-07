
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IStream ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ HGLOBAL ;


 scalar_t__ CreateStreamOnHGlobal (scalar_t__,int ,int **) ;
 int GMEM_MOVEABLE ;
 scalar_t__ GlobalAlloc (int ,int) ;
 void* GlobalLock (scalar_t__) ;
 int GlobalUnlock (scalar_t__) ;
 scalar_t__ S_OK ;
 int TRUE ;
 int memcpy (void*,void const*,int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static IStream *create_stream(const void *data, int data_size)
{
    HRESULT hr;
    IStream *stream;
    HGLOBAL hdata;
    void *locked_data;

    hdata = GlobalAlloc(GMEM_MOVEABLE, data_size);
    ok(hdata != 0, "GlobalAlloc failed\n");
    if (!hdata) return ((void*)0);

    locked_data = GlobalLock(hdata);
    memcpy(locked_data, data, data_size);
    GlobalUnlock(hdata);

    hr = CreateStreamOnHGlobal(hdata, TRUE, &stream);
    ok(hr == S_OK, "CreateStreamOnHGlobal failed, hr=%x\n", hr);

    return stream;
}
