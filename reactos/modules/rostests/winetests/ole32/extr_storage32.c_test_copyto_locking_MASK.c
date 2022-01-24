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
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IStorage ;
typedef  scalar_t__ HRESULT ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int STGM_CREATE ; 
 int STGM_READWRITE ; 
 int STGM_SHARE_EXCLUSIVE ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  filename ; 
 int /*<<< orphan*/  filenameA ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 

__attribute__((used)) static void FUNC8(void)
{
    IStorage *stg, *stg2, *stg3, *stg4;
    IStream *stm;
    HRESULT r;
    static const WCHAR stgname[] = { 'S','T','G','1',0 };
    static const WCHAR stgname2[] = { 'S','T','G','2',0 };
    static const WCHAR stmname[] = { 'C','O','N','T','E','N','T','S',0 };
    BOOL ret;

    FUNC0(filenameA);

    /* create the file */
    r = FUNC6( filename, STGM_CREATE | STGM_SHARE_EXCLUSIVE |
                            STGM_READWRITE, 0, &stg);
    FUNC7(r==S_OK, "StgCreateDocfile failed\n");

    /* create a substorage */
    r = FUNC2(stg, stgname, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stg2);
    FUNC7(r==S_OK, "IStorage->CreateStorage failed, hr=%08x\n", r);

    /* create another substorage */
    r = FUNC2(stg, stgname2, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stg3);
    FUNC7(r==S_OK, "IStorage->CreateStorage failed, hr=%08x\n", r);

    /* add a stream, and leave it open */
    r = FUNC3(stg2, stmname, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stm);
    FUNC7(r==S_OK, "IStorage->CreateStream failed, hr=%08x\n", r);

    /* Try to copy the storage while the stream is open */
    r = FUNC1(stg2, 0, NULL, NULL, stg3);
    FUNC7(r==S_OK, "IStorage->CopyTo failed, hr=%08x\n", r);

    FUNC5(stm);

    /* create a substorage */
    r = FUNC2(stg2, stgname, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stg4);
    FUNC7(r==S_OK, "IStorage->CreateStorage failed, hr=%08x\n", r);

    /* Try to copy the storage while the substorage is open */
    r = FUNC1(stg2, 0, NULL, NULL, stg3);
    FUNC7(r==S_OK, "IStorage->CopyTo failed, hr=%08x\n", r);

    FUNC4(stg4);
    FUNC4(stg3);
    FUNC4(stg2);
    FUNC4(stg);

    ret = FUNC0(filenameA);
    FUNC7(ret, "deleted file\n");
}