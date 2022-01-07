
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int IStream ;
typedef int IStorage ;
typedef scalar_t__ HRESULT ;


 int DeleteFileA (char*) ;
 scalar_t__ IStorage_CreateStorage (int *,char const*,int,int ,int ,int **) ;
 scalar_t__ IStorage_CreateStream (int *,char const*,int,int ,int ,int **) ;
 scalar_t__ IStorage_DestroyElement (int *,char const*) ;
 scalar_t__ IStorage_OpenStorage (int *,char const*,int *,int,int *,int ,int **) ;
 int IStorage_Release (int *) ;
 int IStream_Release (int *) ;
 int STGM_CREATE ;
 int STGM_READ ;
 int STGM_READWRITE ;
 int STGM_SHARE_DENY_NONE ;
 int STGM_SHARE_EXCLUSIVE ;
 int STGM_TRANSACTED ;
 scalar_t__ STG_E_ACCESSDENIED ;
 scalar_t__ STG_E_FILEALREADYEXISTS ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 scalar_t__ StgCreateDocfile (char const*,int,int ,int **) ;
 scalar_t__ StgOpenStorage (char const*,int *,int,int *,int ,int **) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_readonly(void)
{
    IStorage *stg, *stg2, *stg3;
    IStream *stream;
    HRESULT hr;
    static const WCHAR fileW[] = {'w','i','n','e','t','e','s','t',0};
    static const WCHAR storageW[] = {'s','t','o','r','a','g','e',0};
    static const WCHAR streamW[] = {'s','t','r','e','a','m',0};

    hr = StgCreateDocfile( fileW, STGM_CREATE | STGM_SHARE_EXCLUSIVE | STGM_READWRITE, 0, &stg);
    ok(hr == S_OK, "should succeed, res=%x\n", hr);
    if (SUCCEEDED(hr))
    {
        hr = IStorage_CreateStorage( stg, storageW, STGM_CREATE | STGM_SHARE_EXCLUSIVE | STGM_READWRITE, 0, 0, &stg2 );
        ok(hr == S_OK, "should succeed, res=%x\n", hr);
        if (SUCCEEDED(hr))
        {
            hr = IStorage_CreateStream( stg2, streamW, STGM_CREATE | STGM_SHARE_EXCLUSIVE | STGM_READWRITE, 0, 0, &stream );
            ok(hr == S_OK, "should succeed, res=%x\n", hr);
            if (SUCCEEDED(hr))
                IStream_Release(stream);
            IStorage_Release(stg2);
        }
        IStorage_Release(stg);
    }


    hr = StgOpenStorage( fileW, ((void*)0), STGM_TRANSACTED | STGM_SHARE_DENY_NONE | STGM_READ, ((void*)0), 0, &stg);
    ok(hr == S_OK, "should succeed, res=%x\n", hr);
    if (SUCCEEDED(hr))
    {
        hr = IStorage_OpenStorage( stg, storageW, ((void*)0), STGM_SHARE_EXCLUSIVE | STGM_READ, ((void*)0), 0, &stg2 );
        ok(hr == S_OK, "should succeed, res=%x\n", hr);
        if (SUCCEEDED(hr))
        {

            hr = IStorage_CreateStream( stg2, streamW, STGM_CREATE | STGM_SHARE_EXCLUSIVE | STGM_READ, 0, 0, &stream );
            ok(hr == STG_E_ACCESSDENIED, "should fail, res=%x\n", hr);
            if (SUCCEEDED(hr))
                IStream_Release(stream);


            hr = IStorage_CreateStream( stg2, storageW, STGM_CREATE | STGM_SHARE_EXCLUSIVE | STGM_READ, 0, 0, &stream );
            ok(hr == STG_E_ACCESSDENIED, "should fail, res=%x\n", hr);
            if (SUCCEEDED(hr))
                IStream_Release(stream);


            hr = IStorage_CreateStorage( stg2, streamW, STGM_CREATE | STGM_SHARE_EXCLUSIVE | STGM_READ, 0, 0, &stg3 );
            ok(hr == STG_E_FILEALREADYEXISTS, "should fail, res=%x\n", hr);
            if (SUCCEEDED(hr))
                IStorage_Release(stg3);


            hr = IStorage_CreateStorage( stg2, storageW, STGM_CREATE | STGM_SHARE_EXCLUSIVE | STGM_READ, 0, 0, &stg3 );
            ok(hr == STG_E_ACCESSDENIED, "should fail, res=%x\n", hr);
            if (SUCCEEDED(hr))
                IStorage_Release(stg3);


            hr = IStorage_DestroyElement( stg2, streamW );
            ok(hr == STG_E_ACCESSDENIED, "should fail, res=%x\n", hr);


            hr = IStorage_DestroyElement( stg2, storageW );
            ok(hr == STG_E_ACCESSDENIED, "should fail, res=%x\n", hr);

            IStorage_Release(stg2);
        }

        IStorage_Release(stg);
    }

    DeleteFileA("winetest");
}
