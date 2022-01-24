#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int QuadPart; } ;
typedef  TYPE_3__ ULARGE_INTEGER ;
struct TYPE_8__ {int LowPart; } ;
struct TYPE_9__ {TYPE_1__ u; } ;
struct TYPE_11__ {TYPE_2__ cbSize; int /*<<< orphan*/  clsid; } ;
typedef  TYPE_4__ STATSTG ;
typedef  int /*<<< orphan*/  IStorage ;
typedef  int /*<<< orphan*/  ILockBytes ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  GUID_NULL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_3__,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STATFLAG_NONAME ; 
 int STGM_CREATE ; 
 int STGM_READ ; 
 int STGM_READWRITE ; 
 int STGM_SHARE_EXCLUSIVE ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 

__attribute__((used)) static void FUNC12(void)
{
    ILockBytes *ilb = NULL;
    IStorage *stg = NULL;
    HRESULT r;
    STATSTG stat;
    char junk[512];
    ULARGE_INTEGER offset;

    r = FUNC0(NULL, TRUE, &ilb);
    FUNC11(r == S_OK, "CreateILockBytesOnHGlobal failed, hr=%x\n", r);

    offset.QuadPart = 0;
    FUNC10(junk, 0xaa, 512);
    r = FUNC3(ilb, offset, junk, 512, NULL);
    FUNC11(r == S_OK, "ILockBytes_WriteAt failed, hr=%x\n", r);

    offset.QuadPart = 2000;
    r = FUNC3(ilb, offset, junk, 512, NULL);
    FUNC11(r == S_OK, "ILockBytes_WriteAt failed, hr=%x\n", r);

    r = FUNC8(ilb, STGM_CREATE|STGM_SHARE_EXCLUSIVE|STGM_READWRITE, 0,  &stg);
    FUNC11(r == S_OK, "StgCreateDocfileOnILockBytes failed, hr=%x\n", r);

    FUNC4(stg);

    r = FUNC9(ilb, NULL, STGM_READ|STGM_SHARE_EXCLUSIVE,
        NULL, 0, &stg);
    FUNC11(r == S_OK, "StgOpenStorageOnILockBytes failed, hr=%x\n", r);

    if (FUNC7(r))
    {
        r = FUNC5(stg, &stat, STATFLAG_NONAME);
        FUNC11(r == S_OK, "StgOpenStorageOnILockBytes failed, hr=%x\n", r);
        FUNC11(FUNC6(&stat.clsid, &GUID_NULL), "unexpected CLSID value\n");

        FUNC4(stg);
    }

    r = FUNC2(ilb, &stat, STATFLAG_NONAME);
    FUNC11(r == S_OK, "ILockBytes_Stat failed, hr=%x\n", r);
    FUNC11(stat.cbSize.u.LowPart < 2512, "expected truncated size, got %d\n", stat.cbSize.u.LowPart);

    FUNC1(ilb);
}