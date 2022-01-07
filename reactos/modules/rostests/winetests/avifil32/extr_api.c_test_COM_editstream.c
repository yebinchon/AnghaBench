
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int IUnknown ;
typedef int IAVIStream ;
typedef int IAVIEditStream ;
typedef int HRESULT ;


 int CreateEditableStream (int **,int *) ;
 int IAVIEditStream_AddRef (int *) ;
 int IAVIEditStream_QueryInterface (int *,int *,void**) ;
 int IAVIEditStream_Release (int *) ;
 int IAVIStream_AddRef (int *) ;
 int IAVIStream_QueryInterface (int *,int *,void**) ;
 int IID_IAVIEditStream ;
 int IID_IUnknown ;
 int IUnknown_AddRef (int *) ;
 int IUnknown_Release (int *) ;
 int S_OK ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test_COM_editstream(void)
{
    IAVIEditStream *edit;
    IAVIStream *stream;
    IUnknown *unk;
    ULONG refcount;
    HRESULT hr;


    hr = CreateEditableStream(&stream, ((void*)0));
    ok(hr == S_OK, "AVIEditStream create failed: %08x, expected S_OK\n", hr);
    refcount = IAVIStream_AddRef(stream);
    ok(refcount == 2, "refcount == %u, expected 2\n", refcount);

    hr = IAVIStream_QueryInterface(stream, &IID_IAVIEditStream, (void**)&edit);
    ok(hr == S_OK, "QueryInterface for IID_IAVIEditStream failed: %08x\n", hr);
    refcount = IAVIEditStream_AddRef(edit);
    ok(refcount == 4, "refcount == %u, expected 4\n", refcount);
    refcount = IAVIEditStream_Release(edit);

    hr = IAVIEditStream_QueryInterface(edit, &IID_IUnknown, (void**)&unk);
    ok(hr == S_OK, "QueryInterface for IID_IUnknown failed: %08x\n", hr);
    refcount = IUnknown_AddRef(unk);
    ok(refcount == 5, "refcount == %u, expected 5\n", refcount);
    IUnknown_Release(unk);

    while (IAVIEditStream_Release(edit));
}
