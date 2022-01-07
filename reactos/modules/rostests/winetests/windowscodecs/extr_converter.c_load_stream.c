
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IWICPersistStream ;
typedef int IUnknown ;
typedef int IStream ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 int IID_IWICPersistStream ;
 scalar_t__ IUnknown_QueryInterface (int *,int *,void**) ;
 scalar_t__ IWICPersistStream_LoadEx (int *,int *,int *,int ) ;
 int IWICPersistStream_Release (int *) ;
 scalar_t__ S_OK ;
 int WICPersistOptionBigEndian ;
 int WICPersistOptionLittleEndian ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void load_stream(IUnknown *reader, IStream *stream)
{
    HRESULT hr;
    IWICPersistStream *persist;



    DWORD persist_options = WICPersistOptionLittleEndian;


    hr = IUnknown_QueryInterface(reader, &IID_IWICPersistStream, (void **)&persist);
    ok(hr == S_OK, "QueryInterface failed, hr=%x\n", hr);

    hr = IWICPersistStream_LoadEx(persist, stream, ((void*)0), persist_options);
    ok(hr == S_OK, "LoadEx failed, hr=%x\n", hr);

    IWICPersistStream_Release(persist);
}
