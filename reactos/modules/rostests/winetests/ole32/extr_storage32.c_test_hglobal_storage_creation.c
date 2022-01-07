
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int QuadPart; } ;
typedef TYPE_3__ ULARGE_INTEGER ;
struct TYPE_8__ {int LowPart; } ;
struct TYPE_9__ {TYPE_1__ u; } ;
struct TYPE_11__ {TYPE_2__ cbSize; int clsid; } ;
typedef TYPE_4__ STATSTG ;
typedef int IStorage ;
typedef int ILockBytes ;
typedef scalar_t__ HRESULT ;


 scalar_t__ CreateILockBytesOnHGlobal (int *,int ,int **) ;
 int GUID_NULL ;
 int ILockBytes_Release (int *) ;
 scalar_t__ ILockBytes_Stat (int *,TYPE_4__*,int ) ;
 scalar_t__ ILockBytes_WriteAt (int *,TYPE_3__,char*,int,int *) ;
 int IStorage_Release (int *) ;
 scalar_t__ IStorage_Stat (int *,TYPE_4__*,int ) ;
 int IsEqualCLSID (int *,int *) ;
 int STATFLAG_NONAME ;
 int STGM_CREATE ;
 int STGM_READ ;
 int STGM_READWRITE ;
 int STGM_SHARE_EXCLUSIVE ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 scalar_t__ StgCreateDocfileOnILockBytes (int *,int,int ,int **) ;
 scalar_t__ StgOpenStorageOnILockBytes (int *,int *,int,int *,int ,int **) ;
 int TRUE ;
 int memset (char*,int,int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_hglobal_storage_creation(void)
{
    ILockBytes *ilb = ((void*)0);
    IStorage *stg = ((void*)0);
    HRESULT r;
    STATSTG stat;
    char junk[512];
    ULARGE_INTEGER offset;

    r = CreateILockBytesOnHGlobal(((void*)0), TRUE, &ilb);
    ok(r == S_OK, "CreateILockBytesOnHGlobal failed, hr=%x\n", r);

    offset.QuadPart = 0;
    memset(junk, 0xaa, 512);
    r = ILockBytes_WriteAt(ilb, offset, junk, 512, ((void*)0));
    ok(r == S_OK, "ILockBytes_WriteAt failed, hr=%x\n", r);

    offset.QuadPart = 2000;
    r = ILockBytes_WriteAt(ilb, offset, junk, 512, ((void*)0));
    ok(r == S_OK, "ILockBytes_WriteAt failed, hr=%x\n", r);

    r = StgCreateDocfileOnILockBytes(ilb, STGM_CREATE|STGM_SHARE_EXCLUSIVE|STGM_READWRITE, 0, &stg);
    ok(r == S_OK, "StgCreateDocfileOnILockBytes failed, hr=%x\n", r);

    IStorage_Release(stg);

    r = StgOpenStorageOnILockBytes(ilb, ((void*)0), STGM_READ|STGM_SHARE_EXCLUSIVE,
        ((void*)0), 0, &stg);
    ok(r == S_OK, "StgOpenStorageOnILockBytes failed, hr=%x\n", r);

    if (SUCCEEDED(r))
    {
        r = IStorage_Stat(stg, &stat, STATFLAG_NONAME);
        ok(r == S_OK, "StgOpenStorageOnILockBytes failed, hr=%x\n", r);
        ok(IsEqualCLSID(&stat.clsid, &GUID_NULL), "unexpected CLSID value\n");

        IStorage_Release(stg);
    }

    r = ILockBytes_Stat(ilb, &stat, STATFLAG_NONAME);
    ok(r == S_OK, "ILockBytes_Stat failed, hr=%x\n", r);
    ok(stat.cbSize.u.LowPart < 2512, "expected truncated size, got %d\n", stat.cbSize.u.LowPart);

    ILockBytes_Release(ilb);
}
