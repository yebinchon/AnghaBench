
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IStream ;
typedef scalar_t__ HRESULT ;


 scalar_t__ CoMarshalInterface (int *,...) ;
 scalar_t__ CoReleaseMarshalData (int *) ;
 scalar_t__ CreateStreamOnHGlobal (int *,...) ;
 int IID_IClassFactory ;
 int IStream_Release (int *) ;
 int IStream_Seek (int *,int ,int ,int *) ;
 int MSHCTX_INPROC ;
 int MSHLFLAGS_NORMAL ;
 scalar_t__ STG_E_READFAULT ;
 int STREAM_SEEK_SET ;
 int TRUE ;
 int Test_ClassFactory ;
 int ok (int,char*,scalar_t__) ;
 int ok_more_than_one_lock () ;
 int ok_ole_success (scalar_t__,scalar_t__ (*) (int *)) ;
 int ullZero ;

__attribute__((used)) static void test_bad_marshal_stream(void)
{
    HRESULT hr;
    IStream *pStream = ((void*)0);

    hr = CreateStreamOnHGlobal(((void*)0), TRUE, &pStream);
    ok_ole_success(hr, CreateStreamOnHGlobal);
    hr = CoMarshalInterface(pStream, &IID_IClassFactory, (IUnknown*)&Test_ClassFactory, MSHCTX_INPROC, ((void*)0), MSHLFLAGS_NORMAL);
    ok_ole_success(hr, CoMarshalInterface);

    ok_more_than_one_lock();


    hr = CoReleaseMarshalData(pStream);
    ok(hr == STG_E_READFAULT, "Should have failed with STG_E_READFAULT, but returned 0x%08x instead\n", hr);


    IStream_Seek(pStream, ullZero, STREAM_SEEK_SET, ((void*)0));
    hr = CoReleaseMarshalData(pStream);
    ok_ole_success(hr, CoReleaseMarshalData);

    IStream_Release(pStream);
}
