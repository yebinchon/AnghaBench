
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IStream ;
typedef scalar_t__ HRESULT ;
typedef int HGLOBAL ;


 scalar_t__ CreateStreamOnHGlobal (int ,int ,int **) ;
 int GHND ;
 int GlobalAlloc (int ,unsigned int) ;
 void* GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 scalar_t__ S_OK ;
 int TRUE ;
 int memcpy (void*,void const*,unsigned int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static IStream *create_stream_on_data(const void *data, unsigned int size)
{
    IStream *stream = ((void*)0);
    HGLOBAL hglobal;
    void *ptr;
    HRESULT hr;

    hglobal = GlobalAlloc(GHND, size);
    ptr = GlobalLock(hglobal);

    memcpy(ptr, data, size);

    hr = CreateStreamOnHGlobal(hglobal, TRUE, &stream);
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    ok(stream != ((void*)0), "Expected non-NULL stream\n");

    GlobalUnlock(hglobal);

    return stream;
}
