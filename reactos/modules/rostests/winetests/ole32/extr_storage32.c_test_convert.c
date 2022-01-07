
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int IStorage ;
typedef scalar_t__ HRESULT ;


 int DeleteFileW (char const*) ;
 scalar_t__ E_INVALIDARG ;
 int FALSE ;
 scalar_t__ GetConvertStg (int *) ;
 int IStorage_Release (int *) ;
 int STGM_CREATE ;
 int STGM_READWRITE ;
 int STGM_SHARE_EXCLUSIVE ;
 scalar_t__ STG_E_FILENOTFOUND ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 scalar_t__ SetConvertStg (int *,int ) ;
 scalar_t__ StgCreateDocfile (char const*,int,int ,int **) ;
 int TRUE ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_convert(void)
{
    static const WCHAR filename[] = {'s','t','o','r','a','g','e','.','s','t','g',0};
    IStorage *stg;
    HRESULT hr;

    hr = GetConvertStg(((void*)0));
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = StgCreateDocfile( filename, STGM_CREATE | STGM_SHARE_EXCLUSIVE | STGM_READWRITE, 0, &stg);
    ok(hr == S_OK, "StgCreateDocfile failed\n");
    hr = GetConvertStg(stg);
    ok(hr == STG_E_FILENOTFOUND, "got 0x%08x\n", hr);
    hr = SetConvertStg(stg, TRUE);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    hr = SetConvertStg(stg, TRUE);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    hr = GetConvertStg(stg);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    hr = SetConvertStg(stg, FALSE);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    hr = GetConvertStg(stg);
    ok(hr == S_FALSE, "got 0x%08x\n", hr);

    IStorage_Release(stg);

    DeleteFileW(filename);
}
