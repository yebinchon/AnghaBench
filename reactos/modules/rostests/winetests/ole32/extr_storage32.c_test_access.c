
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int IStorage ;
typedef scalar_t__ HRESULT ;


 int DeleteFileA (char const*) ;
 scalar_t__ IStorage_Commit (int *,int ) ;
 int IStorage_Release (int *) ;
 int STGC_DEFAULT ;
 int STGM_CREATE ;
 int STGM_DIRECT ;
 int STGM_DIRECT_SWMR ;
 int STGM_READ ;
 int STGM_READWRITE ;
 int STGM_SHARE_DENY_NONE ;
 int STGM_SHARE_DENY_READ ;
 int STGM_SHARE_DENY_WRITE ;
 int STGM_SHARE_EXCLUSIVE ;
 int STGM_TRANSACTED ;
 scalar_t__ STG_E_INVALIDFLAG ;
 scalar_t__ S_OK ;
 scalar_t__ StgCreateDocfile (char const*,int,int ,int **) ;
 scalar_t__ StgOpenStorage (char const*,int *,int,int *,int ,int **) ;
 scalar_t__ broken (int) ;
 int create ;
 int create_close ;
 int create_commit ;
 int ok (int,char*,scalar_t__) ;
 int test_file_access (char const*,int ) ;

__attribute__((used)) static void test_access(void)
{
    static const WCHAR fileW[] = {'w','i','n','e','t','e','s','t',0};
    static const char fileA[] = "winetest";
    IStorage *stg;
    HRESULT hr;


    hr = StgCreateDocfile(fileW, STGM_CREATE | STGM_READWRITE |
                          STGM_SHARE_EXCLUSIVE | STGM_TRANSACTED, 0, &stg);
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    test_file_access(fileA, create);

    hr = IStorage_Commit(stg, STGC_DEFAULT);
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    test_file_access(fileA, create_commit);

    IStorage_Release(stg);

    test_file_access(fileA, create_close);

    DeleteFileA(fileA);


    hr = StgCreateDocfile(fileW, STGM_CREATE | STGM_READWRITE |
                          STGM_SHARE_EXCLUSIVE | STGM_DIRECT, 0, &stg);
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    test_file_access(fileA, create);

    hr = IStorage_Commit(stg, STGC_DEFAULT);
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    test_file_access(fileA, create_commit);

    IStorage_Release(stg);

    test_file_access(fileA, create_close);

    DeleteFileA(fileA);


    hr = StgCreateDocfile(fileW, STGM_CREATE | STGM_READWRITE |
                          STGM_SHARE_DENY_NONE | STGM_TRANSACTED, 0, &stg);
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    test_file_access(fileA, create);

    hr = IStorage_Commit(stg, STGC_DEFAULT);
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    test_file_access(fileA, create_commit);

    IStorage_Release(stg);

    test_file_access(fileA, create_close);

    DeleteFileA(fileA);


    hr = StgCreateDocfile(fileW, STGM_CREATE | STGM_READWRITE |
                          STGM_SHARE_DENY_READ | STGM_TRANSACTED, 0, &stg);
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    test_file_access(fileA, create);

    hr = IStorage_Commit(stg, STGC_DEFAULT);
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    test_file_access(fileA, create_commit);

    IStorage_Release(stg);

    test_file_access(fileA, create_close);

    DeleteFileA(fileA);


    hr = StgCreateDocfile(fileW, STGM_CREATE | STGM_READWRITE |
                          STGM_SHARE_DENY_WRITE | STGM_TRANSACTED, 0, &stg);
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    test_file_access(fileA, create);

    hr = IStorage_Commit(stg, STGC_DEFAULT);
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    test_file_access(fileA, create_commit);

    IStorage_Release(stg);

    test_file_access(fileA, create_close);

    DeleteFileA(fileA);


    hr = StgCreateDocfile(fileW, STGM_CREATE | STGM_READWRITE | STGM_SHARE_DENY_WRITE | STGM_TRANSACTED, 0, &stg);
    ok(hr == S_OK, "got %08x\n", hr);
    IStorage_Release(stg);

    hr = StgOpenStorage(fileW, ((void*)0), STGM_DIRECT_SWMR | STGM_READ | STGM_SHARE_DENY_NONE, ((void*)0), 0, &stg);
    ok(hr == S_OK || broken(hr == STG_E_INVALIDFLAG), "got %08x\n", hr);
    if(hr != S_OK)
       return;

    test_file_access(fileA, create);

    IStorage_Release(stg);
    test_file_access(fileA, create_close);

    DeleteFileA(fileA);
}
