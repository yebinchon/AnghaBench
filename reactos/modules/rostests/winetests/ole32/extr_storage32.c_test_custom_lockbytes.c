
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_4__ {int locks_supported; int ILockBytes_iface; scalar_t__ lock_hr; int lock_called; } ;
typedef TYPE_1__ TestLockBytes ;
typedef int IStream ;
typedef int IStorage ;
typedef scalar_t__ HRESULT ;


 int CreateTestLockBytes (TYPE_1__**) ;
 int DeleteTestLockBytes (TYPE_1__*) ;
 scalar_t__ IStorage_Commit (int *,int ) ;
 scalar_t__ IStorage_CreateStream (int *,char const*,int,int ,int ,int **) ;
 int IStorage_Release (int *) ;
 int IStream_Release (int *) ;
 int LOCK_EXCLUSIVE ;
 int LOCK_ONLYONCE ;
 int LOCK_WRITE ;
 int STGM_CREATE ;
 int STGM_READWRITE ;
 int STGM_SHARE_EXCLUSIVE ;
 int STGM_TRANSACTED ;
 scalar_t__ STG_E_INVALIDFUNCTION ;
 scalar_t__ S_OK ;
 scalar_t__ StgCreateDocfileOnILockBytes (int *,int,int ,int **) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_custom_lockbytes(void)
{
    static const WCHAR stmname[] = { 'C','O','N','T','E','N','T','S',0 };
    TestLockBytes* lockbytes;
    HRESULT hr;
    IStorage* stg;
    IStream* stm;

    CreateTestLockBytes(&lockbytes);

    hr = StgCreateDocfileOnILockBytes(&lockbytes->ILockBytes_iface, STGM_CREATE|STGM_READWRITE|STGM_TRANSACTED, 0, &stg);
    ok(hr==S_OK, "StgCreateDocfileOnILockBytes failed %x\n", hr);

    hr = IStorage_CreateStream(stg, stmname, STGM_SHARE_EXCLUSIVE|STGM_READWRITE, 0, 0, &stm);
    ok(hr==S_OK, "IStorage_CreateStream failed %x\n", hr);

    IStream_Release(stm);

    hr = IStorage_Commit(stg, 0);

    IStorage_Release(stg);

    ok(!lockbytes->lock_called, "unexpected call to LockRegion\n");

    lockbytes->locks_supported = LOCK_WRITE|LOCK_EXCLUSIVE|LOCK_ONLYONCE;

    hr = StgCreateDocfileOnILockBytes(&lockbytes->ILockBytes_iface, STGM_CREATE|STGM_READWRITE|STGM_TRANSACTED, 0, &stg);
    ok(hr==S_OK, "StgCreateDocfileOnILockBytes failed %x\n", hr);

    hr = IStorage_CreateStream(stg, stmname, STGM_SHARE_EXCLUSIVE|STGM_READWRITE, 0, 0, &stm);
    ok(hr==S_OK, "IStorage_CreateStream failed %x\n", hr);

    IStream_Release(stm);

    hr = IStorage_Commit(stg, 0);

    IStorage_Release(stg);

    ok(lockbytes->lock_called, "expected LockRegion to be called\n");

    lockbytes->lock_hr = STG_E_INVALIDFUNCTION;

    hr = StgCreateDocfileOnILockBytes(&lockbytes->ILockBytes_iface, STGM_CREATE|STGM_READWRITE|STGM_TRANSACTED, 0, &stg);
    ok(hr==STG_E_INVALIDFUNCTION, "StgCreateDocfileOnILockBytes failed %x\n", hr);

    DeleteTestLockBytes(lockbytes);
}
