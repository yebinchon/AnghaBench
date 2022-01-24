#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  IStorage ;
typedef  scalar_t__ HRESULT ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IStorage ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int STGM_CREATE ; 
 int STGM_READWRITE ; 
 int STGM_SHARE_EXCLUSIVE ; 
 int STGM_TRANSACTED ; 
 scalar_t__ STG_E_ACCESSDENIED ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  filename ; 
 int /*<<< orphan*/  filenameA ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 

__attribute__((used)) static void FUNC6(void)
{
    IStorage *stg, *stg2, *stg3, *stg4;
    HRESULT r;
    static const WCHAR stgname[] = { 'S','T','G','1',0 };
    static const WCHAR stgname2[] = { 'S','T','G','2',0 };
    BOOL ret;

    FUNC0(filenameA);

    /* create the file */
    r = FUNC4( filename, STGM_CREATE | STGM_SHARE_EXCLUSIVE |
                            STGM_READWRITE, 0, &stg);
    FUNC5(r==S_OK, "StgCreateDocfile failed\n");

    /* create a substorage */
    r = FUNC2(stg, stgname, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stg2);
    FUNC5(r==S_OK, "IStorage->CreateStorage failed, hr=%08x\n", r);

    /* copy the parent to the child */
    r = FUNC1(stg, 0, NULL, NULL, stg2);
    FUNC5(r==STG_E_ACCESSDENIED, "IStorage->CopyTo failed, hr=%08x\n", r);

    /* create a transacted substorage */
    r = FUNC2(stg, stgname2, STGM_READWRITE | STGM_SHARE_EXCLUSIVE | STGM_TRANSACTED, 0, 0, &stg3);
    FUNC5(r==S_OK, "IStorage->CreateStorage failed, hr=%08x\n", r);

    /* copy the parent to the transacted child */
    r = FUNC1(stg, 0, NULL, NULL, stg2);
    FUNC5(r==STG_E_ACCESSDENIED, "IStorage->CopyTo failed, hr=%08x\n", r);

    /* create a transacted subsubstorage */
    r = FUNC2(stg3, stgname2, STGM_READWRITE | STGM_SHARE_EXCLUSIVE | STGM_TRANSACTED, 0, 0, &stg4);
    FUNC5(r==S_OK, "IStorage->CreateStorage failed, hr=%08x\n", r);

    /* copy the parent to the transacted child of the transacted child */
    r = FUNC1(stg, 0, NULL, NULL, stg4);
    FUNC5(r==STG_E_ACCESSDENIED, "IStorage->CopyTo failed, hr=%08x\n", r);

    /* copy the parent but exclude storage objects */
    r = FUNC1(stg, 1, &IID_IStorage, NULL, stg4);
    FUNC5(r==S_OK, "IStorage->CopyTo failed, hr=%08x\n", r);

    FUNC3(stg4);
    FUNC3(stg3);
    FUNC3(stg2);
    FUNC3(stg);

    ret = FUNC0(filenameA);
    FUNC5(ret, "deleted file\n");
}