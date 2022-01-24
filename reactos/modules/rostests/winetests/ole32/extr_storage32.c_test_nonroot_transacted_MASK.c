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
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int STGM_CREATE ; 
 int STGM_READ ; 
 int STGM_READWRITE ; 
 int STGM_SHARE_EXCLUSIVE ; 
 int STGM_TRANSACTED ; 
 scalar_t__ STG_E_ACCESSDENIED ; 
 scalar_t__ STG_E_FILENOTFOUND ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  filename ; 
 int /*<<< orphan*/  filenameA ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 

__attribute__((used)) static void FUNC11(void)
{
    IStorage *stg = NULL, *stg2 = NULL, *stg3 = NULL;
    HRESULT r;
    IStream *stm = NULL;
    static const WCHAR stgname[] = { 'P','E','R','M','S','T','G',0 };
    static const WCHAR stmname[] = { 'C','O','N','T','E','N','T','S',0 };
    static const WCHAR stmname2[] = { 'F','O','O',0 };
    BOOL ret;

    FUNC0(filenameA);

    /* create a transacted file */
    r = FUNC9( filename, STGM_CREATE | STGM_SHARE_EXCLUSIVE |
                            STGM_READWRITE |STGM_TRANSACTED, 0, &stg);
    FUNC10(r==S_OK, "StgCreateDocfile failed\n");

    /* create a transacted substorage */
    r = FUNC2(stg, stgname, STGM_READWRITE | STGM_SHARE_EXCLUSIVE | STGM_TRANSACTED, 0, 0, &stg2);
    FUNC10(r==S_OK, "IStorage->CreateStorage failed, hr=%08x\n", r);

    if (r == S_OK)
    {
        /* create and commit stmname */
        r = FUNC3(stg2, stmname, STGM_SHARE_EXCLUSIVE | STGM_READWRITE, 0, 0, &stm );
        FUNC10(r==S_OK, "IStorage->CreateStream failed\n");
        if (r == S_OK)
            FUNC8(stm);

        FUNC1(stg2, 0);

        /* create and revert stmname2 */
        r = FUNC3(stg2, stmname2, STGM_SHARE_EXCLUSIVE | STGM_READWRITE, 0, 0, &stm );
        FUNC10(r==S_OK, "IStorage->CreateStream failed\n");
        if (r == S_OK)
            FUNC8(stm);

        FUNC7(stg2);

        /* check that Commit and Revert really worked */
        r = FUNC5(stg2, stmname, NULL, STGM_SHARE_EXCLUSIVE|STGM_READWRITE, 0, &stm );
        FUNC10(r==S_OK, "IStorage->OpenStream should succeed %08x\n", r);
        if (r == S_OK)
            FUNC8(stm);

        r = FUNC5(stg2, stmname2, NULL, STGM_SHARE_EXCLUSIVE|STGM_READWRITE, 0, &stm );
        FUNC10(r==STG_E_FILENOTFOUND, "IStorage->OpenStream should fail %08x\n", r);
        if (r == S_OK)
            FUNC8(stm);

        FUNC6(stg2);
    }

    /* create a read-only transacted substorage */
    r = FUNC4(stg, stgname, NULL, STGM_READ | STGM_SHARE_EXCLUSIVE | STGM_TRANSACTED, NULL, 0, &stg2);
    FUNC10(r==S_OK, "IStorage->OpenStorage failed, hr=%08x\n", r);

    if (r == S_OK)
    {
        /* The storage can be modified. */
        r = FUNC2(stg2, stgname, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stg3);
        FUNC10(r==S_OK, "IStorage->CreateStorage failed, hr=%08x\n", r);
        if (r == S_OK)
            FUNC6(stg3);

        /* But changes cannot be committed. */
        r = FUNC1(stg2, 0);
        FUNC10(r==STG_E_ACCESSDENIED, "IStorage->Commit should fail, hr=%08x\n", r);

        FUNC6(stg2);
    }

    FUNC6(stg);

    /* create a non-transacted file */
    r = FUNC9( filename, STGM_CREATE | STGM_SHARE_EXCLUSIVE |
                            STGM_READWRITE, 0, &stg);
    FUNC10(r==S_OK, "StgCreateDocfile failed\n");

    /* create a transacted substorage */
    r = FUNC2(stg, stgname, STGM_READWRITE | STGM_SHARE_EXCLUSIVE | STGM_TRANSACTED, 0, 0, &stg2);
    FUNC10(r==S_OK, "IStorage->CreateStorage failed, hr=%08x\n", r);

    if (r == S_OK)
    {
        /* create and commit stmname */
        r = FUNC3(stg2, stmname, STGM_SHARE_EXCLUSIVE | STGM_READWRITE, 0, 0, &stm );
        FUNC10(r==S_OK, "IStorage->CreateStream failed\n");
        if (r == S_OK)
            FUNC8(stm);

        FUNC1(stg2, 0);

        /* create and revert stmname2 */
        r = FUNC3(stg2, stmname2, STGM_SHARE_EXCLUSIVE | STGM_READWRITE, 0, 0, &stm );
        FUNC10(r==S_OK, "IStorage->CreateStream failed\n");
        if (r == S_OK)
            FUNC8(stm);

        FUNC7(stg2);

        /* check that Commit and Revert really worked */
        r = FUNC5(stg2, stmname, NULL, STGM_SHARE_EXCLUSIVE|STGM_READWRITE, 0, &stm );
        FUNC10(r==S_OK, "IStorage->OpenStream should succeed %08x\n", r);
        if (r == S_OK)
            FUNC8(stm);

        r = FUNC5(stg2, stmname2, NULL, STGM_SHARE_EXCLUSIVE|STGM_READWRITE, 0, &stm );
        FUNC10(r==STG_E_FILENOTFOUND, "IStorage->OpenStream should fail %08x\n", r);
        if (r == S_OK)
            FUNC8(stm);

        FUNC6(stg2);
    }

    FUNC6(stg);

    ret = FUNC0(filenameA);
    FUNC10(ret, "deleted file\n");
}