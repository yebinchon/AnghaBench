
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int IUnknown ;
typedef void IStream ;
typedef int IMoniker ;
typedef int HRESULT ;


 int CoMarshalInterface (void*,int *,void**,...) ;
 int CoUnmarshalInterface (void*,int *,void**) ;
 int CreateFileMoniker (void*,int *,...) ;
 int CreateStreamOnHGlobal (void*,int *,void**) ;
 int IID_IMoniker ;
 int IMoniker_IsEqual (int *,int *) ;
 int IMoniker_Release (int *) ;
 int IStream_Release (void*) ;
 int IStream_Seek (void*,int *,void**,...) ;
 int IsEqual (void*,int *,void**) ;
 int MSHCTX_INPROC ;
 int MSHLFLAGS_NORMAL ;
 int STREAM_SEEK_SET ;
 int * TRUE ;
 int llZero ;
 int ok_ole_success (int ,int (*) (void*,int *,void**)) ;

__attribute__((used)) static void test_file_moniker(WCHAR* path)
{
    IStream *stream;
    IMoniker *moniker1 = ((void*)0), *moniker2 = ((void*)0);
    HRESULT hr;

    hr = CreateFileMoniker(path, &moniker1);
    ok_ole_success(hr, CreateFileMoniker);

    hr = CreateStreamOnHGlobal(((void*)0), TRUE, &stream);
    ok_ole_success(hr, CreateStreamOnHGlobal);


    hr = CoMarshalInterface(stream, &IID_IMoniker, (IUnknown *)moniker1, MSHCTX_INPROC, ((void*)0), MSHLFLAGS_NORMAL);
    ok_ole_success(hr, CoMarshalInterface);


    hr = IStream_Seek(stream, llZero, STREAM_SEEK_SET, ((void*)0));
    ok_ole_success(hr, IStream_Seek);


    hr = CoUnmarshalInterface(stream, &IID_IMoniker, (void**)&moniker2);
    ok_ole_success(hr, CoUnmarshalInterface);

    hr = IMoniker_IsEqual(moniker1, moniker2);
    ok_ole_success(hr, IsEqual);

    IStream_Release(stream);
    if (moniker1)
        IMoniker_Release(moniker1);
    if (moniker2)
        IMoniker_Release(moniker2);
}
