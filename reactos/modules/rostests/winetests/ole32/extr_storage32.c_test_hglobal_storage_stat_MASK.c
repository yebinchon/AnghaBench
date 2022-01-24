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
struct TYPE_4__ {int type; int grfMode; int /*<<< orphan*/  clsid; int /*<<< orphan*/ * pwcsName; } ;
typedef  TYPE_1__ STATSTG ;
typedef  int /*<<< orphan*/  IStorage ;
typedef  int /*<<< orphan*/  ILockBytes ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ STGM_CREATE ; 
 scalar_t__ STGM_READWRITE ; 
 scalar_t__ STGM_SHARE_EXCLUSIVE ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 
 int /*<<< orphan*/  test_stg_cls ; 

__attribute__((used)) static void FUNC10(void)
{
    ILockBytes *ilb = NULL;
    IStorage *stg = NULL;
    HRESULT r;
    STATSTG stat;
    DWORD mode, refcount;

    r = FUNC0( NULL, TRUE, &ilb );
    FUNC9( r == S_OK, "CreateILockBytesOnHGlobal failed\n");

    r = FUNC5( ilb );
    FUNC9( r == S_FALSE, "StgIsStorageILockBytes should have failed\n");

    mode = STGM_CREATE|STGM_SHARE_EXCLUSIVE|STGM_READWRITE;/*0x1012*/
    r = FUNC4( ilb, mode, 0,  &stg );
    FUNC9( r == S_OK, "StgCreateDocfileOnILockBytes failed\n");

    r = FUNC6( stg, &test_stg_cls );
    FUNC9( r == S_OK, "WriteClassStg failed\n");

    r = FUNC5( ilb );
    FUNC9( r == S_OK, "StgIsStorageILockBytes failed\n");

    FUNC8( &stat, 0, sizeof stat );
    r = FUNC3( stg, &stat, 0 );

    FUNC9( stat.pwcsName == NULL, "storage name not null\n");
    FUNC9( stat.type == 1, "type is wrong\n");
    FUNC9( stat.grfMode == 0x12, "grf mode is incorrect\n");
    FUNC9( !FUNC7(&stat.clsid, &test_stg_cls, sizeof test_stg_cls), "CLSID is wrong\n");

    refcount = FUNC2( stg );
    FUNC9( refcount == 0, "IStorage refcount is wrong\n");
    refcount = FUNC1( ilb );
    FUNC9( refcount == 0, "ILockBytes refcount is wrong\n");
}