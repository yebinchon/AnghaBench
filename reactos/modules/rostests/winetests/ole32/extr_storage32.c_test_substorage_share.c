
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
 scalar_t__ IStorage_CreateStorage (int *,char const*,int,int ,int ,int **) ;
 scalar_t__ IStorage_CreateStream (int *,char const*,int,int ,int ,int **) ;
 scalar_t__ IStorage_DestroyElement (int *,char const*) ;
 scalar_t__ IStorage_OpenStorage (int *,char const*,int *,int,int ,int ,int **) ;
 scalar_t__ IStorage_OpenStream (int *,char const*,int *,int,int ,int **) ;
 int IStorage_Release (int *) ;
 scalar_t__ IStorage_RenameElement (int *,char const*,char const*) ;
 int IStream_Release (int *) ;
 scalar_t__ IStream_Write (int *,char*,int,int *) ;
 int STGM_CREATE ;
 int STGM_READ ;
 int STGM_READWRITE ;
 int STGM_SHARE_EXCLUSIVE ;
 scalar_t__ STG_E_ACCESSDENIED ;
 scalar_t__ STG_E_REVERTED ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 scalar_t__ StgCreateDocfile (int ,int,int ,int **) ;
 int filename ;
 int filenameA ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_substorage_share(void)
{
    IStorage *stg, *stg2, *stg3;
    IStream *stm, *stm2;
    HRESULT r;
    static const WCHAR stgname[] = { 'P','E','R','M','S','T','G',0 };
    static const WCHAR stmname[] = { 'C','O','N','T','E','N','T','S',0 };
    static const WCHAR othername[] = { 'N','E','W','N','A','M','E',0 };
    BOOL ret;

    DeleteFileA(filenameA);


    r = StgCreateDocfile( filename, STGM_CREATE | STGM_SHARE_EXCLUSIVE |
                            STGM_READWRITE, 0, &stg);
    ok(r==S_OK, "StgCreateDocfile failed\n");


    r = IStorage_CreateStorage(stg, stgname, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stg2);
    ok(r==S_OK, "IStorage->CreateStorage failed, hr=%08x\n", r);

    if (r == S_OK)
    {
        r = IStorage_OpenStorage(stg, stgname, ((void*)0), STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stg3);
        ok(r==STG_E_ACCESSDENIED, "IStorage->OpenStorage should fail %08x\n", r);

        if (r == S_OK)
            IStorage_Release(stg3);

        r = IStorage_OpenStorage(stg, stgname, ((void*)0), STGM_READ | STGM_SHARE_EXCLUSIVE, 0, 0, &stg3);
        ok(r==STG_E_ACCESSDENIED, "IStorage->OpenStorage should fail %08x\n", r);

        if (r == S_OK)
            IStorage_Release(stg3);


        r = IStorage_RenameElement(stg, stgname, othername);
        ok(r==STG_E_ACCESSDENIED, "IStorage->RenameElement should fail %08x\n", r);
        if (SUCCEEDED(r)) IStorage_RenameElement(stg, othername, stgname);


        r = IStorage_DestroyElement(stg, stgname);
        ok(r==S_OK, "IStorage->DestroyElement failed, hr=%08x\n", r);

        r = IStorage_CreateStream(stg2, stmname, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stm);
        ok(r==STG_E_REVERTED, "IStorage->CreateStream failed, hr=%08x\n", r);

        if (r == S_OK)
            IStream_Release(stm);

        IStorage_Release(stg2);
    }


    r = IStorage_CreateStream(stg, stmname, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stm);
    ok(r==S_OK, "IStorage->CreateStream failed, hr=%08x\n", r);

    if (r == S_OK)
    {
        r = IStorage_OpenStream(stg, stmname, ((void*)0), STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, &stm2);
        ok(r==STG_E_ACCESSDENIED, "IStorage->OpenStream should fail %08x\n", r);

        if (r == S_OK)
            IStream_Release(stm2);

        r = IStorage_OpenStream(stg, stmname, ((void*)0), STGM_READ | STGM_SHARE_EXCLUSIVE, 0, &stm2);
        ok(r==STG_E_ACCESSDENIED, "IStorage->OpenStream should fail %08x\n", r);

        if (r == S_OK)
            IStream_Release(stm2);


        r = IStorage_RenameElement(stg, stmname, othername);
        ok(r==STG_E_ACCESSDENIED, "IStorage->RenameElement should fail %08x\n", r);
        if (SUCCEEDED(r)) IStorage_RenameElement(stg, othername, stmname);


        r = IStorage_DestroyElement(stg, stmname);
        ok(r==S_OK, "IStorage->DestroyElement failed, hr=%08x\n", r);

        r = IStream_Write(stm, "this shouldn't work\n", 20, ((void*)0));
        ok(r==STG_E_REVERTED, "IStream_Write should fail %08x\n", r);

        IStream_Release(stm);
    }

    IStorage_Release(stg);

    ret = DeleteFileA(filenameA);
    ok(ret, "deleted file\n");
}
