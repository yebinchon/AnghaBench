
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; int grfMode; int clsid; int * pwcsName; } ;
typedef TYPE_1__ STATSTG ;
typedef int IStorage ;
typedef int ILockBytes ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ DWORD ;


 scalar_t__ CreateILockBytesOnHGlobal (int *,int ,int **) ;
 scalar_t__ ILockBytes_Release (int *) ;
 scalar_t__ IStorage_Release (int *) ;
 scalar_t__ IStorage_Stat (int *,TYPE_1__*,int ) ;
 scalar_t__ STGM_CREATE ;
 scalar_t__ STGM_READWRITE ;
 scalar_t__ STGM_SHARE_EXCLUSIVE ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 scalar_t__ StgCreateDocfileOnILockBytes (int *,scalar_t__,int ,int **) ;
 scalar_t__ StgIsStorageILockBytes (int *) ;
 int TRUE ;
 scalar_t__ WriteClassStg (int *,int *) ;
 int memcmp (int *,int *,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int,char*) ;
 int test_stg_cls ;

__attribute__((used)) static void test_hglobal_storage_stat(void)
{
    ILockBytes *ilb = ((void*)0);
    IStorage *stg = ((void*)0);
    HRESULT r;
    STATSTG stat;
    DWORD mode, refcount;

    r = CreateILockBytesOnHGlobal( ((void*)0), TRUE, &ilb );
    ok( r == S_OK, "CreateILockBytesOnHGlobal failed\n");

    r = StgIsStorageILockBytes( ilb );
    ok( r == S_FALSE, "StgIsStorageILockBytes should have failed\n");

    mode = STGM_CREATE|STGM_SHARE_EXCLUSIVE|STGM_READWRITE;
    r = StgCreateDocfileOnILockBytes( ilb, mode, 0, &stg );
    ok( r == S_OK, "StgCreateDocfileOnILockBytes failed\n");

    r = WriteClassStg( stg, &test_stg_cls );
    ok( r == S_OK, "WriteClassStg failed\n");

    r = StgIsStorageILockBytes( ilb );
    ok( r == S_OK, "StgIsStorageILockBytes failed\n");

    memset( &stat, 0, sizeof stat );
    r = IStorage_Stat( stg, &stat, 0 );

    ok( stat.pwcsName == ((void*)0), "storage name not null\n");
    ok( stat.type == 1, "type is wrong\n");
    ok( stat.grfMode == 0x12, "grf mode is incorrect\n");
    ok( !memcmp(&stat.clsid, &test_stg_cls, sizeof test_stg_cls), "CLSID is wrong\n");

    refcount = IStorage_Release( stg );
    ok( refcount == 0, "IStorage refcount is wrong\n");
    refcount = ILockBytes_Release( ilb );
    ok( refcount == 0, "ILockBytes refcount is wrong\n");
}
