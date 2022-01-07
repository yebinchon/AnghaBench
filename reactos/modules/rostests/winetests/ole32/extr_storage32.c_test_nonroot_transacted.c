
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int IStream ;
typedef int IStorage ;
typedef scalar_t__ HRESULT ;
typedef int BOOL ;


 int DeleteFileA (int ) ;
 scalar_t__ IStorage_Commit (int *,int ) ;
 scalar_t__ IStorage_CreateStorage (int *,char const*,int,int ,int ,int **) ;
 scalar_t__ IStorage_CreateStream (int *,char const*,int,int ,int ,int **) ;
 scalar_t__ IStorage_OpenStorage (int *,char const*,int *,int,int *,int ,int **) ;
 scalar_t__ IStorage_OpenStream (int *,char const*,int *,int,int ,int **) ;
 int IStorage_Release (int *) ;
 int IStorage_Revert (int *) ;
 int IStream_Release (int *) ;
 int STGM_CREATE ;
 int STGM_READ ;
 int STGM_READWRITE ;
 int STGM_SHARE_EXCLUSIVE ;
 int STGM_TRANSACTED ;
 scalar_t__ STG_E_ACCESSDENIED ;
 scalar_t__ STG_E_FILENOTFOUND ;
 scalar_t__ S_OK ;
 scalar_t__ StgCreateDocfile (int ,int,int ,int **) ;
 int filename ;
 int filenameA ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_nonroot_transacted(void)
{
    IStorage *stg = ((void*)0), *stg2 = ((void*)0), *stg3 = ((void*)0);
    HRESULT r;
    IStream *stm = ((void*)0);
    static const WCHAR stgname[] = { 'P','E','R','M','S','T','G',0 };
    static const WCHAR stmname[] = { 'C','O','N','T','E','N','T','S',0 };
    static const WCHAR stmname2[] = { 'F','O','O',0 };
    BOOL ret;

    DeleteFileA(filenameA);


    r = StgCreateDocfile( filename, STGM_CREATE | STGM_SHARE_EXCLUSIVE |
                            STGM_READWRITE |STGM_TRANSACTED, 0, &stg);
    ok(r==S_OK, "StgCreateDocfile failed\n");


    r = IStorage_CreateStorage(stg, stgname, STGM_READWRITE | STGM_SHARE_EXCLUSIVE | STGM_TRANSACTED, 0, 0, &stg2);
    ok(r==S_OK, "IStorage->CreateStorage failed, hr=%08x\n", r);

    if (r == S_OK)
    {

        r = IStorage_CreateStream(stg2, stmname, STGM_SHARE_EXCLUSIVE | STGM_READWRITE, 0, 0, &stm );
        ok(r==S_OK, "IStorage->CreateStream failed\n");
        if (r == S_OK)
            IStream_Release(stm);

        IStorage_Commit(stg2, 0);


        r = IStorage_CreateStream(stg2, stmname2, STGM_SHARE_EXCLUSIVE | STGM_READWRITE, 0, 0, &stm );
        ok(r==S_OK, "IStorage->CreateStream failed\n");
        if (r == S_OK)
            IStream_Release(stm);

        IStorage_Revert(stg2);


        r = IStorage_OpenStream(stg2, stmname, ((void*)0), STGM_SHARE_EXCLUSIVE|STGM_READWRITE, 0, &stm );
        ok(r==S_OK, "IStorage->OpenStream should succeed %08x\n", r);
        if (r == S_OK)
            IStream_Release(stm);

        r = IStorage_OpenStream(stg2, stmname2, ((void*)0), STGM_SHARE_EXCLUSIVE|STGM_READWRITE, 0, &stm );
        ok(r==STG_E_FILENOTFOUND, "IStorage->OpenStream should fail %08x\n", r);
        if (r == S_OK)
            IStream_Release(stm);

        IStorage_Release(stg2);
    }


    r = IStorage_OpenStorage(stg, stgname, ((void*)0), STGM_READ | STGM_SHARE_EXCLUSIVE | STGM_TRANSACTED, ((void*)0), 0, &stg2);
    ok(r==S_OK, "IStorage->OpenStorage failed, hr=%08x\n", r);

    if (r == S_OK)
    {

        r = IStorage_CreateStorage(stg2, stgname, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stg3);
        ok(r==S_OK, "IStorage->CreateStorage failed, hr=%08x\n", r);
        if (r == S_OK)
            IStorage_Release(stg3);


        r = IStorage_Commit(stg2, 0);
        ok(r==STG_E_ACCESSDENIED, "IStorage->Commit should fail, hr=%08x\n", r);

        IStorage_Release(stg2);
    }

    IStorage_Release(stg);


    r = StgCreateDocfile( filename, STGM_CREATE | STGM_SHARE_EXCLUSIVE |
                            STGM_READWRITE, 0, &stg);
    ok(r==S_OK, "StgCreateDocfile failed\n");


    r = IStorage_CreateStorage(stg, stgname, STGM_READWRITE | STGM_SHARE_EXCLUSIVE | STGM_TRANSACTED, 0, 0, &stg2);
    ok(r==S_OK, "IStorage->CreateStorage failed, hr=%08x\n", r);

    if (r == S_OK)
    {

        r = IStorage_CreateStream(stg2, stmname, STGM_SHARE_EXCLUSIVE | STGM_READWRITE, 0, 0, &stm );
        ok(r==S_OK, "IStorage->CreateStream failed\n");
        if (r == S_OK)
            IStream_Release(stm);

        IStorage_Commit(stg2, 0);


        r = IStorage_CreateStream(stg2, stmname2, STGM_SHARE_EXCLUSIVE | STGM_READWRITE, 0, 0, &stm );
        ok(r==S_OK, "IStorage->CreateStream failed\n");
        if (r == S_OK)
            IStream_Release(stm);

        IStorage_Revert(stg2);


        r = IStorage_OpenStream(stg2, stmname, ((void*)0), STGM_SHARE_EXCLUSIVE|STGM_READWRITE, 0, &stm );
        ok(r==S_OK, "IStorage->OpenStream should succeed %08x\n", r);
        if (r == S_OK)
            IStream_Release(stm);

        r = IStorage_OpenStream(stg2, stmname2, ((void*)0), STGM_SHARE_EXCLUSIVE|STGM_READWRITE, 0, &stm );
        ok(r==STG_E_FILENOTFOUND, "IStorage->OpenStream should fail %08x\n", r);
        if (r == S_OK)
            IStream_Release(stm);

        IStorage_Release(stg2);
    }

    IStorage_Release(stg);

    ret = DeleteFileA(filenameA);
    ok(ret, "deleted file\n");
}
