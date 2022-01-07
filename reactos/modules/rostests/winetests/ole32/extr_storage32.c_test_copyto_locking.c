
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
 scalar_t__ IStorage_CopyTo (int *,int ,int *,int *,int *) ;
 scalar_t__ IStorage_CreateStorage (int *,char const*,int,int ,int ,int **) ;
 scalar_t__ IStorage_CreateStream (int *,char const*,int,int ,int ,int **) ;
 int IStorage_Release (int *) ;
 int IStream_Release (int *) ;
 int STGM_CREATE ;
 int STGM_READWRITE ;
 int STGM_SHARE_EXCLUSIVE ;
 scalar_t__ S_OK ;
 scalar_t__ StgCreateDocfile (int ,int,int ,int **) ;
 int filename ;
 int filenameA ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_copyto_locking(void)
{
    IStorage *stg, *stg2, *stg3, *stg4;
    IStream *stm;
    HRESULT r;
    static const WCHAR stgname[] = { 'S','T','G','1',0 };
    static const WCHAR stgname2[] = { 'S','T','G','2',0 };
    static const WCHAR stmname[] = { 'C','O','N','T','E','N','T','S',0 };
    BOOL ret;

    DeleteFileA(filenameA);


    r = StgCreateDocfile( filename, STGM_CREATE | STGM_SHARE_EXCLUSIVE |
                            STGM_READWRITE, 0, &stg);
    ok(r==S_OK, "StgCreateDocfile failed\n");


    r = IStorage_CreateStorage(stg, stgname, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stg2);
    ok(r==S_OK, "IStorage->CreateStorage failed, hr=%08x\n", r);


    r = IStorage_CreateStorage(stg, stgname2, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stg3);
    ok(r==S_OK, "IStorage->CreateStorage failed, hr=%08x\n", r);


    r = IStorage_CreateStream(stg2, stmname, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stm);
    ok(r==S_OK, "IStorage->CreateStream failed, hr=%08x\n", r);


    r = IStorage_CopyTo(stg2, 0, ((void*)0), ((void*)0), stg3);
    ok(r==S_OK, "IStorage->CopyTo failed, hr=%08x\n", r);

    IStream_Release(stm);


    r = IStorage_CreateStorage(stg2, stgname, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stg4);
    ok(r==S_OK, "IStorage->CreateStorage failed, hr=%08x\n", r);


    r = IStorage_CopyTo(stg2, 0, ((void*)0), ((void*)0), stg3);
    ok(r==S_OK, "IStorage->CopyTo failed, hr=%08x\n", r);

    IStorage_Release(stg4);
    IStorage_Release(stg3);
    IStorage_Release(stg2);
    IStorage_Release(stg);

    ret = DeleteFileA(filenameA);
    ok(ret, "deleted file\n");
}
