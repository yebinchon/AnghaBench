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
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int STGM_CREATE ; 
 int STGM_READWRITE ; 
 int STGM_SHARE_EXCLUSIVE ; 
 scalar_t__ STG_E_FILENOTFOUND ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  filename ; 
 int /*<<< orphan*/  filenameA ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 

__attribute__((used)) static void FUNC11(void)
{
    IStorage *stg, *stg2;
    IStream *stm;
    HRESULT r;
    static const WCHAR stgname[] = { 'P','E','R','M','S','T','G',0 };
    static const WCHAR stgname2[] = { 'S','T','G',0 };
    static const WCHAR stmname[] = { 'C','O','N','T','E','N','T','S',0 };
    static const WCHAR stmname2[] = { 'E','N','T','S',0 };
    BOOL ret;

    FUNC0(filenameA);

    /* create the file */
    r = FUNC9( filename, STGM_CREATE | STGM_SHARE_EXCLUSIVE |
                            STGM_READWRITE, 0, &stg);
    FUNC10(r==S_OK, "StgCreateDocfile failed\n");

    /* create a substorage */
    r = FUNC1(stg, stgname, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stg2);
    FUNC10(r==S_OK, "IStorage->CreateStorage failed, hr=%08x\n", r);

    /* create a stream in the substorage */
    r = FUNC2(stg2, stmname, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stm);
    FUNC10(r==S_OK, "IStorage->CreateStream failed, hr=%08x\n", r);
    FUNC7(stm);

    /* rename the stream */
    r = FUNC6(stg2, stmname, stmname2);
    FUNC10(r==S_OK, "IStorage->RenameElement failed, hr=%08x\n", r);

    /* cannot open stream with old name */
    r = FUNC4(stg2, stmname, NULL, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, &stm);
    FUNC10(r==STG_E_FILENOTFOUND, "IStorage_OpenStream should fail, hr=%08x\n", r);
    if (FUNC8(r)) FUNC7(stm);

    /* can open stream with new name */
    r = FUNC4(stg2, stmname2, NULL, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, &stm);
    FUNC10(r==S_OK, "IStorage_OpenStream failed, hr=%08x\n", r);
    if (FUNC8(r)) FUNC7(stm);

    FUNC5(stg2);

    /* rename the storage */
    FUNC6(stg, stgname, stgname2);

    /* cannot open storage with old name */
    r = FUNC3(stg, stgname, NULL, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, NULL, 0, &stg2);
    FUNC10(r==STG_E_FILENOTFOUND, "IStorage_OpenStream should fail, hr=%08x\n", r);
    if (FUNC8(r)) FUNC5(stg2);

    /* can open storage with new name */
    r = FUNC3(stg, stgname2, NULL, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, NULL, 0, &stg2);
    FUNC10(r==S_OK, "IStorage_OpenStream should fail, hr=%08x\n", r);
    if (FUNC8(r))
    {
        /* opened storage still has the stream */
        r = FUNC4(stg2, stmname2, NULL, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, &stm);
        FUNC10(r==S_OK, "IStorage_OpenStream failed, hr=%08x\n", r);
        if (FUNC8(r)) FUNC7(stm);

        FUNC5(stg2);
    }

    FUNC5(stg);

    ret = FUNC0(filenameA);
    FUNC10(ret, "deleted file\n");
}