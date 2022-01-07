
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int clsid2 ;
typedef int clsid ;
typedef int LARGE_INTEGER ;
typedef int IStream ;
typedef scalar_t__ HRESULT ;
typedef int CLSID ;


 int CLSID_NULL ;
 scalar_t__ CreateStreamOnHGlobal (int *,int ,int **) ;
 scalar_t__ E_INVALIDARG ;
 int IStream_Release (int *) ;
 scalar_t__ IStream_Seek (int *,int const,int ,int *) ;
 int IsEqualCLSID (int *,int *) ;
 scalar_t__ ReadClassStm (int *,int *) ;
 scalar_t__ STG_E_READFAULT ;
 int STREAM_SEEK_SET ;
 int TRUE ;
 scalar_t__ WriteClassStm (int *,int *) ;
 int memset (int *,int,int) ;
 int ok (int,char*,...) ;
 int ok_ole_success (scalar_t__,char*) ;
 int test_stg_cls ;

__attribute__((used)) static void test_ReadClassStm(void)
{
    CLSID clsid, clsid2;
    HRESULT hr;
    IStream *pStream;
    static const LARGE_INTEGER llZero;

    hr = ReadClassStm(((void*)0), &clsid);
    ok(hr == E_INVALIDARG, "ReadClassStm should have returned E_INVALIDARG instead of 0x%08x\n", hr);

    hr = CreateStreamOnHGlobal(((void*)0), TRUE, &pStream);
    ok_ole_success(hr, "CreateStreamOnHGlobal");
    hr = WriteClassStm(pStream, &test_stg_cls);
    ok_ole_success(hr, "WriteClassStm");

    hr = ReadClassStm(pStream, ((void*)0));
    ok(hr == E_INVALIDARG, "ReadClassStm should have returned E_INVALIDARG instead of 0x%08x\n", hr);

    memset(&clsid, 0xcc, sizeof(clsid));
    memset(&clsid2, 0xcc, sizeof(clsid2));
    hr = ReadClassStm(((void*)0), &clsid);
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);
    ok(IsEqualCLSID(&clsid, &clsid2), "got wrong clsid\n");


    hr = ReadClassStm(pStream, &clsid);
    ok(hr == STG_E_READFAULT, "ReadClassStm should have returned STG_E_READFAULT instead of 0x%08x\n", hr);
    ok(IsEqualCLSID(&clsid, &CLSID_NULL), "clsid should have been zeroed\n");

    hr = IStream_Seek(pStream, llZero, STREAM_SEEK_SET, ((void*)0));
    ok_ole_success(hr, "IStream_Seek");
    hr = ReadClassStm(pStream, &clsid);
    ok_ole_success(hr, "ReadClassStm");
    ok(IsEqualCLSID(&clsid, &test_stg_cls), "clsid should have been set to CLSID_WineTest\n");

    IStream_Release(pStream);
}
