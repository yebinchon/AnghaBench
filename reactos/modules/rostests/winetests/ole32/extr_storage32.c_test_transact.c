
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
 scalar_t__ IStream_Commit (int *,int) ;
 int IStream_Release (int *) ;
 scalar_t__ IStream_Write (int *,char*,int,int *) ;
 int STGC_DANGEROUSLYCOMMITMERELYTODISKCACHE ;
 int STGC_ONLYIFCURRENT ;
 int STGM_CREATE ;
 int STGM_DELETEONRELEASE ;
 int STGM_READ ;
 int STGM_READWRITE ;
 int STGM_SHARE_DENY_NONE ;
 int STGM_SHARE_EXCLUSIVE ;
 int STGM_TRANSACTED ;
 scalar_t__ STG_E_FILENOTFOUND ;
 scalar_t__ STG_E_INVALIDFLAG ;
 scalar_t__ STG_E_INVALIDFUNCTION ;
 scalar_t__ S_OK ;
 scalar_t__ StgCreateDocfile (int ,int,int ,int **) ;
 scalar_t__ StgOpenStorage (int ,int *,int,int *,int ,int **) ;
 int filename ;
 int filenameA ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_transact(void)
{
    IStorage *stg = ((void*)0), *stg2 = ((void*)0), *stg3 = ((void*)0);
    HRESULT r;
    IStream *stm = ((void*)0);
    static const WCHAR stmname[] = { 'C','O','N','T','E','N','T','S',0 };
    static const WCHAR stmname2[] = { 'F','O','O',0 };
    static const WCHAR stgname[] = { 'P','E','R','M','S','T','G',0 };
    static const WCHAR stgname2[] = { 'T','E','M','P','S','T','G',0 };
    BOOL ret;

    DeleteFileA(filenameA);


    r = StgCreateDocfile( filename, STGM_CREATE | STGM_SHARE_EXCLUSIVE |
                            STGM_READWRITE |STGM_TRANSACTED, 0, &stg);
    ok(r==S_OK, "StgCreateDocfile failed\n");


    r = IStorage_CreateStream(stg, stmname2, STGM_SHARE_EXCLUSIVE | STGM_READWRITE, 0, 0, &stm );
    ok(r==S_OK, "IStorage->CreateStream failed\n");

    r = IStream_Write(stm, "this is stream 1\n", 16, ((void*)0));
    ok(r==S_OK, "IStream->Write failed\n");

    IStream_Release(stm);

    r = IStorage_CreateStorage(stg, stgname, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stg2);
    ok(r==S_OK, "IStorage->CreateStorage failed, hr=%08x\n", r);

    if (r == S_OK)
    {

        r = IStorage_CreateStorage(stg2, stgname, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stg3);
        ok(r==S_OK, "IStorage->CreateStorage failed, hr=%08x\n", r);

        if (r == S_OK)
            IStorage_Release(stg3);

        r = IStorage_Commit(stg, 0);
        ok(r==S_OK, "IStorage->Commit failed\n");

        r = IStorage_CreateStorage(stg2, stgname2, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stg3);
        ok(r==S_OK, "IStorage->CreateStorage failed, hr=%08x\n", r);

        if (r == S_OK)
            IStorage_Release(stg3);

        IStorage_Release(stg2);
    }


    stm = ((void*)0);
    r = IStorage_CreateStream(stg, stmname, STGM_SHARE_EXCLUSIVE | STGM_READWRITE, 0, 0, &stm );
    ok(r==S_OK, "IStorage->CreateStream failed\n");

    r = IStream_Write(stm, "this is stream 2\n", 16, ((void*)0));
    ok(r==S_OK, "IStream->Write failed\n");


    r = IStream_Commit(stm, STGC_ONLYIFCURRENT | STGC_DANGEROUSLYCOMMITMERELYTODISKCACHE);
    ok(r==S_OK, "IStream->Commit failed\n");

    r = IStorage_CreateStorage(stg, stgname2, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stg2);
    ok(r==S_OK, "IStorage->CreateStorage failed, hr=%08x\n", r);

    if (r == S_OK)
        IStorage_Release(stg2);

    IStream_Release(stm);

    IStorage_Release(stg);

    stm = ((void*)0);
    stg = ((void*)0);
    r = StgOpenStorage( filename, ((void*)0), STGM_SHARE_DENY_NONE | STGM_READ | STGM_TRANSACTED, ((void*)0), 0, &stg);
    ok(r==S_OK, "StgOpenStorage failed\n");

    if (!stg)
        return;

    r = IStorage_OpenStream(stg, stmname, ((void*)0), STGM_SHARE_DENY_NONE|STGM_READ, 0, &stm );
    ok(r==STG_E_INVALIDFLAG, "IStorage->OpenStream failed %08x\n", r);

    r = IStorage_OpenStream(stg, stmname, ((void*)0), STGM_DELETEONRELEASE|STGM_SHARE_EXCLUSIVE|STGM_READWRITE, 0, &stm );
    ok(r==STG_E_INVALIDFUNCTION, "IStorage->OpenStream failed %08x\n", r);

    r = IStorage_OpenStream(stg, stmname, ((void*)0), STGM_TRANSACTED|STGM_SHARE_EXCLUSIVE|STGM_READWRITE, 0, &stm );
    ok(r==STG_E_INVALIDFUNCTION, "IStorage->OpenStream failed %08x\n", r);

    r = IStorage_OpenStorage(stg, stmname, ((void*)0), STGM_TRANSACTED|STGM_SHARE_EXCLUSIVE|STGM_READWRITE, ((void*)0), 0, &stg2 );
    ok(r==STG_E_FILENOTFOUND, "IStorage->OpenStream failed %08x\n", r);

    r = IStorage_OpenStream(stg, stmname, ((void*)0), STGM_SHARE_EXCLUSIVE|STGM_READWRITE, 0, &stm );
    ok(r==STG_E_FILENOTFOUND, "IStorage->OpenStream should fail %08x\n", r);
    if (r == S_OK)
        IStream_Release(stm);

    r = IStorage_OpenStorage(stg, stgname2, ((void*)0), STGM_SHARE_EXCLUSIVE|STGM_READWRITE, ((void*)0), 0, &stg2 );
    ok(r==STG_E_FILENOTFOUND, "IStorage->OpenStorage should fail %08x\n", r);
    if (r == S_OK)
        IStorage_Release(stg2);

    r = IStorage_OpenStorage(stg, stmname2, ((void*)0), STGM_TRANSACTED|STGM_SHARE_EXCLUSIVE|STGM_READWRITE, ((void*)0), 0, &stg2 );
    ok(r==STG_E_FILENOTFOUND, "IStorage->OpenStream failed %08x\n", r);

    r = IStorage_OpenStream(stg, stmname2, ((void*)0), STGM_SHARE_EXCLUSIVE|STGM_READWRITE, 0, &stm );
    ok(r==S_OK, "IStorage->OpenStream should succeed %08x\n", r);
    if (r == S_OK)
        IStream_Release(stm);

    r = IStorage_OpenStorage(stg, stgname, ((void*)0), STGM_SHARE_EXCLUSIVE|STGM_READWRITE, ((void*)0), 0, &stg2 );
    ok(r==S_OK, "IStorage->OpenStorage should succeed %08x\n", r);
    if (r == S_OK)
    {
        r = IStorage_OpenStorage(stg2, stgname, ((void*)0), STGM_SHARE_EXCLUSIVE|STGM_READWRITE, ((void*)0), 0, &stg3 );
        ok(r==S_OK, "IStorage->OpenStorage should succeed %08x\n", r);
        if (r == S_OK)
            IStorage_Release(stg3);

        r = IStorage_OpenStorage(stg2, stgname2, ((void*)0), STGM_SHARE_EXCLUSIVE|STGM_READWRITE, ((void*)0), 0, &stg3 );
        ok(r==STG_E_FILENOTFOUND, "IStorage->OpenStorage should fail %08x\n", r);
        if (r == S_OK)
            IStorage_Release(stg3);

        IStorage_Release(stg2);
    }

    IStorage_Release(stg);

    ret = DeleteFileA(filenameA);
    ok(ret, "deleted file\n");
}
