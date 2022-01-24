#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_4__ {int locks_supported; int /*<<< orphan*/  ILockBytes_iface; scalar_t__ lock_hr; int /*<<< orphan*/  lock_called; } ;
typedef  TYPE_1__ TestLockBytes ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IStorage ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int LOCK_EXCLUSIVE ; 
 int LOCK_ONLYONCE ; 
 int LOCK_WRITE ; 
 int STGM_CREATE ; 
 int STGM_READWRITE ; 
 int STGM_SHARE_EXCLUSIVE ; 
 int STGM_TRANSACTED ; 
 scalar_t__ STG_E_INVALIDFUNCTION ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 

__attribute__((used)) static void FUNC8(void)
{
    static const WCHAR stmname[] = { 'C','O','N','T','E','N','T','S',0 };
    TestLockBytes* lockbytes;
    HRESULT hr;
    IStorage* stg;
    IStream* stm;

    FUNC0(&lockbytes);

    hr = FUNC6(&lockbytes->ILockBytes_iface, STGM_CREATE|STGM_READWRITE|STGM_TRANSACTED, 0, &stg);
    FUNC7(hr==S_OK, "StgCreateDocfileOnILockBytes failed %x\n", hr);

    hr = FUNC3(stg, stmname, STGM_SHARE_EXCLUSIVE|STGM_READWRITE, 0, 0, &stm);
    FUNC7(hr==S_OK, "IStorage_CreateStream failed %x\n", hr);

    FUNC5(stm);

    hr = FUNC2(stg, 0);

    FUNC4(stg);

    FUNC7(!lockbytes->lock_called, "unexpected call to LockRegion\n");

    lockbytes->locks_supported = LOCK_WRITE|LOCK_EXCLUSIVE|LOCK_ONLYONCE;

    hr = FUNC6(&lockbytes->ILockBytes_iface, STGM_CREATE|STGM_READWRITE|STGM_TRANSACTED, 0, &stg);
    FUNC7(hr==S_OK, "StgCreateDocfileOnILockBytes failed %x\n", hr);

    hr = FUNC3(stg, stmname, STGM_SHARE_EXCLUSIVE|STGM_READWRITE, 0, 0, &stm);
    FUNC7(hr==S_OK, "IStorage_CreateStream failed %x\n", hr);

    FUNC5(stm);

    hr = FUNC2(stg, 0);

    FUNC4(stg);

    FUNC7(lockbytes->lock_called, "expected LockRegion to be called\n");

    lockbytes->lock_hr = STG_E_INVALIDFUNCTION;

    hr = FUNC6(&lockbytes->ILockBytes_iface, STGM_CREATE|STGM_READWRITE|STGM_TRANSACTED, 0, &stg);
    FUNC7(hr==STG_E_INVALIDFUNCTION, "StgCreateDocfileOnILockBytes failed %x\n", hr);

    FUNC1(lockbytes);
}