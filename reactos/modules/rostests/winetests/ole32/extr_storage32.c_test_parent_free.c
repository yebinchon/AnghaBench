
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef scalar_t__ ULONG ;
typedef int STATSTG ;
typedef int IStream ;
typedef int IStorage ;
typedef scalar_t__ HRESULT ;
typedef int BOOL ;


 int DeleteFileA (int ) ;
 scalar_t__ IStorage_CreateStorage (int *,char const*,int,int ,int ,int **) ;
 scalar_t__ IStorage_CreateStream (int *,char const*,int,int ,int ,int **) ;
 scalar_t__ IStorage_Release (int *) ;
 scalar_t__ IStorage_SetStateBits (int *,int,int) ;
 scalar_t__ IStorage_Stat (int *,int *,int ) ;
 int IStream_Release (int *) ;
 scalar_t__ IStream_Write (int *,char*,int,int *) ;
 int STATFLAG_NONAME ;
 int STGM_CREATE ;
 int STGM_READWRITE ;
 int STGM_SHARE_EXCLUSIVE ;
 int STGM_TRANSACTED ;
 scalar_t__ STG_E_REVERTED ;
 scalar_t__ S_OK ;
 scalar_t__ StgCreateDocfile (int ,int,int ,int **) ;
 int filename ;
 int filenameA ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_parent_free(void)
{
    IStorage *stg = ((void*)0), *stg2 = ((void*)0), *stg3 = ((void*)0);
    HRESULT r;
    IStream *stm = ((void*)0);
    static const WCHAR stmname[] = { 'C','O','N','T','E','N','T','S',0 };
    static const WCHAR stgname[] = { 'P','E','R','M','S','T','G',0 };
    ULONG ref;
    STATSTG statstg;
    BOOL ret;

    DeleteFileA(filenameA);


    r = StgCreateDocfile( filename, STGM_CREATE | STGM_SHARE_EXCLUSIVE |
                            STGM_READWRITE |STGM_TRANSACTED, 0, &stg);
    ok(r==S_OK, "StgCreateDocfile failed\n");


    r = IStorage_CreateStorage(stg, stgname, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stg2);
    ok(r==S_OK, "IStorage->CreateStorage failed, hr=%08x\n", r);

    if (r == S_OK)
    {

        r = IStorage_CreateStream(stg2, stmname, STGM_SHARE_EXCLUSIVE | STGM_READWRITE, 0, 0, &stm );
        ok(r==S_OK, "IStorage->CreateStream failed\n");

        if (r == S_OK)
        {

            r = IStorage_CreateStorage(stg2, stgname, STGM_SHARE_EXCLUSIVE | STGM_READWRITE, 0, 0, &stg3 );
            ok(r==S_OK, "IStorage->CreateStorage failed\n");
        }


        ref = IStorage_Release(stg2);
        ok(ref == 0, "IStorage still has %u references\n", ref);


        if (r == S_OK)
        {
            r = IStream_Write(stm, "this should fail\n", 17, ((void*)0));
            ok(r==STG_E_REVERTED, "IStream->Write should fail, hr=%x\n", r);

            IStream_Release(stm);

            r = IStorage_Stat(stg3, &statstg, STATFLAG_NONAME);
            ok(r==STG_E_REVERTED, "IStorage_Stat should fail %08x\n", r);

            r = IStorage_SetStateBits(stg3, 1, 1);
            ok(r==STG_E_REVERTED, "IStorage_Stat should fail %08x\n", r);

            IStorage_Release(stg3);
        }
    }

    IStorage_Release(stg);

    ret = DeleteFileA(filenameA);
    ok(ret, "deleted file\n");
}
