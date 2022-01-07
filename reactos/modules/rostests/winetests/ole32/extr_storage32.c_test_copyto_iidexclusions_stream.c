
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IStream ;
typedef int IStorage ;
typedef scalar_t__ HRESULT ;


 int DeleteFileA (int ) ;
 scalar_t__ FAILED (scalar_t__) ;
 int IID_IStream ;
 scalar_t__ IStorage_CopyTo (int *,int,int *,int *,int *) ;
 scalar_t__ IStorage_OpenStorage (int *,int ,int *,int,int *,int ,int **) ;
 scalar_t__ IStorage_OpenStream (int *,int ,int *,int,int ,int **) ;
 int IStorage_Release (int *) ;
 int IStream_Release (int *) ;
 int STGM_CREATE ;
 int STGM_READWRITE ;
 int STGM_SHARE_EXCLUSIVE ;
 scalar_t__ STG_E_FILENOTFOUND ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 scalar_t__ StgCreateDocfile (int ,int,int ,int **) ;
 scalar_t__ create_test_file (int *) ;
 int file1_name ;
 int file1_nameA ;
 int file2_name ;
 int file2_nameA ;
 int ok (int,char*,scalar_t__) ;
 int stgA_name ;
 int stgB_name ;
 int strmA_name ;
 int strmB_name ;
 int strmC_name ;

__attribute__((used)) static void test_copyto_iidexclusions_stream(void)
{
    IStorage *file1 = ((void*)0), *file2 = ((void*)0), *stg_tmp;
    IStream *strm_tmp;
    HRESULT hr;


    hr = StgCreateDocfile(file1_name, STGM_CREATE | STGM_SHARE_EXCLUSIVE | STGM_READWRITE, 0, &file1);
    ok(hr == S_OK, "StgCreateDocfile failed: 0x%08x\n", hr);
    if(FAILED(hr))
        goto cleanup;

    hr = create_test_file(file1);
    if(FAILED(hr))
        goto cleanup;


    hr = StgCreateDocfile(file2_name, STGM_CREATE | STGM_SHARE_EXCLUSIVE | STGM_READWRITE, 0, &file2);
    ok(hr == S_OK, "StgCreateDocfile failed: 0x%08x\n", hr);
    if(FAILED(hr))
        goto cleanup;


    hr = IStorage_CopyTo(file1, 1, &IID_IStream, ((void*)0), file2);
    ok(hr == S_OK, "CopyTo failed: 0x%08x\n", hr);
    if(FAILED(hr))
        goto cleanup;


    hr = IStorage_OpenStorage(file2, stgA_name, ((void*)0),
            STGM_READWRITE | STGM_SHARE_EXCLUSIVE, ((void*)0), 0, &stg_tmp);
    ok(hr == S_OK, "OpenStorage failed: 0x%08x\n", hr);

    if(SUCCEEDED(hr)){
        hr = IStorage_OpenStream(stg_tmp, strmA_name, ((void*)0),
                STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, &strm_tmp);
        ok(hr == STG_E_FILENOTFOUND, "OpenStream should give STG_E_FILENOTFOUND, gave: 0x%08x\n", hr);
        if(SUCCEEDED(hr))
            IStream_Release(strm_tmp);

        IStorage_Release(stg_tmp);
    }

    hr = IStorage_OpenStorage(file2, stgB_name, ((void*)0),
            STGM_READWRITE | STGM_SHARE_EXCLUSIVE, ((void*)0), 0, &stg_tmp);
    ok(hr == S_OK, "OpenStorage failed: 0x%08x\n", hr);

    if(SUCCEEDED(hr)){
        hr = IStorage_OpenStream(stg_tmp, strmB_name, ((void*)0),
                STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, &strm_tmp);
        ok(hr == STG_E_FILENOTFOUND, "OpenStream should give STG_E_FILENOTFOUND, gave: 0x%08x\n", hr);
        if(SUCCEEDED(hr))
            IStream_Release(strm_tmp);

        IStorage_Release(stg_tmp);
    }

    hr = IStorage_OpenStream(file2, strmC_name, ((void*)0),
            STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, &strm_tmp);
    ok(hr == STG_E_FILENOTFOUND, "OpenStream should give STG_E_FILENOTFOUND, gave: 0x%08x\n", hr);
    if(SUCCEEDED(hr))
        IStream_Release(strm_tmp);

cleanup:
    if(file1)
        IStorage_Release(file1);
    if(file2)
        IStorage_Release(file2);

    DeleteFileA(file1_nameA);
    DeleteFileA(file2_nameA);
}
