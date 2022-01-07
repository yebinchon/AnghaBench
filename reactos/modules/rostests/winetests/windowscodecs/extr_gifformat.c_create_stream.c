
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IStream ;
typedef scalar_t__ HRESULT ;
typedef int HGLOBAL ;
typedef int BYTE ;


 scalar_t__ CreateStreamOnHGlobal (int ,int ,int **) ;
 int GlobalAlloc (int ,int ) ;
 int * GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 scalar_t__ S_OK ;
 int TRUE ;
 int memcpy (int *,void const*,int ) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static IStream *create_stream(const void *image_data, UINT image_size)
{
    HGLOBAL hmem;
    BYTE *data;
    HRESULT hr;
    IStream *stream;

    hmem = GlobalAlloc(0, image_size);
    data = GlobalLock(hmem);
    memcpy(data, image_data, image_size);
    GlobalUnlock(hmem);

    hr = CreateStreamOnHGlobal(hmem, TRUE, &stream);
    ok(hr == S_OK, "CreateStreamOnHGlobal error %#x\n", hr);

    return stream;
}
