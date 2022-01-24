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
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int STGC_DANGEROUSLYCOMMITMERELYTODISKCACHE ; 
 int STGC_ONLYIFCURRENT ; 
 int STGM_CREATE ; 
 int STGM_DELETEONRELEASE ; 
 int STGM_READ ; 
 int STGM_READWRITE ; 
 int STGM_SHARE_DENY_NONE ; 
 int STGM_SHARE_EXCLUSIVE ; 
 int STGM_TRANSACTED ; 
 scalar_t__ STG_E_FILENOTFOUND ; 
 scalar_t__ STG_E_INVALIDFLAG ; 
 scalar_t__ STG_E_INVALIDFUNCTION ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  filename ; 
 int /*<<< orphan*/  filenameA ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 

__attribute__((used)) static void FUNC13(void)
{
    IStorage *stg = NULL, *stg2 = NULL, *stg3 = NULL;
    HRESULT r;
    IStream *stm = NULL;
    static const WCHAR stmname[] = { 'C','O','N','T','E','N','T','S',0 };
    static const WCHAR stmname2[] = { 'F','O','O',0 };
    static const WCHAR stgname[] = { 'P','E','R','M','S','T','G',0 };
    static const WCHAR stgname2[] = { 'T','E','M','P','S','T','G',0 };
    BOOL ret;

    FUNC0(filenameA);

    /* create the file */
    r = FUNC10( filename, STGM_CREATE | STGM_SHARE_EXCLUSIVE | 
                            STGM_READWRITE |STGM_TRANSACTED, 0, &stg);
    FUNC12(r==S_OK, "StgCreateDocfile failed\n");

    /* commit a new stream and storage */
    r = FUNC3(stg, stmname2, STGM_SHARE_EXCLUSIVE | STGM_READWRITE, 0, 0, &stm );
    FUNC12(r==S_OK, "IStorage->CreateStream failed\n");

    r = FUNC9(stm, "this is stream 1\n", 16, NULL);
    FUNC12(r==S_OK, "IStream->Write failed\n");

    FUNC8(stm);

    r = FUNC2(stg, stgname, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stg2);
    FUNC12(r==S_OK, "IStorage->CreateStorage failed, hr=%08x\n", r);

    if (r == S_OK)
    {
        /* Create two substorages but only commit one */
        r = FUNC2(stg2, stgname, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stg3);
        FUNC12(r==S_OK, "IStorage->CreateStorage failed, hr=%08x\n", r);

        if (r == S_OK)
            FUNC6(stg3);

        r = FUNC1(stg, 0);
        FUNC12(r==S_OK, "IStorage->Commit failed\n");

        r = FUNC2(stg2, stgname2, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stg3);
        FUNC12(r==S_OK, "IStorage->CreateStorage failed, hr=%08x\n", r);

        if (r == S_OK)
            FUNC6(stg3);

        FUNC6(stg2);
    }

    /* now create a stream and storage, but don't commit them */
    stm = NULL;
    r = FUNC3(stg, stmname, STGM_SHARE_EXCLUSIVE | STGM_READWRITE, 0, 0, &stm );
    FUNC12(r==S_OK, "IStorage->CreateStream failed\n");

    r = FUNC9(stm, "this is stream 2\n", 16, NULL);
    FUNC12(r==S_OK, "IStream->Write failed\n");

    /* IStream::Commit does nothing for OLE storage streams */
    r = FUNC7(stm, STGC_ONLYIFCURRENT | STGC_DANGEROUSLYCOMMITMERELYTODISKCACHE);
    FUNC12(r==S_OK, "IStream->Commit failed\n");

    r = FUNC2(stg, stgname2, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stg2);
    FUNC12(r==S_OK, "IStorage->CreateStorage failed, hr=%08x\n", r);

    if (r == S_OK)
        FUNC6(stg2);

    FUNC8(stm);

    FUNC6(stg);

    stm = NULL;
    stg = NULL;
    r = FUNC11( filename, NULL, STGM_SHARE_DENY_NONE | STGM_READ | STGM_TRANSACTED, NULL, 0, &stg);
    FUNC12(r==S_OK, "StgOpenStorage failed\n");

    if (!stg)
        return;

    r = FUNC5(stg, stmname, NULL, STGM_SHARE_DENY_NONE|STGM_READ, 0, &stm );
    FUNC12(r==STG_E_INVALIDFLAG, "IStorage->OpenStream failed %08x\n", r);

    r = FUNC5(stg, stmname, NULL, STGM_DELETEONRELEASE|STGM_SHARE_EXCLUSIVE|STGM_READWRITE, 0, &stm );
    FUNC12(r==STG_E_INVALIDFUNCTION, "IStorage->OpenStream failed %08x\n", r);

    r = FUNC5(stg, stmname, NULL, STGM_TRANSACTED|STGM_SHARE_EXCLUSIVE|STGM_READWRITE, 0, &stm );
    FUNC12(r==STG_E_INVALIDFUNCTION, "IStorage->OpenStream failed %08x\n", r);

    r = FUNC4(stg, stmname, NULL, STGM_TRANSACTED|STGM_SHARE_EXCLUSIVE|STGM_READWRITE, NULL, 0, &stg2 );
    FUNC12(r==STG_E_FILENOTFOUND, "IStorage->OpenStream failed %08x\n", r);

    r = FUNC5(stg, stmname, NULL, STGM_SHARE_EXCLUSIVE|STGM_READWRITE, 0, &stm );
    FUNC12(r==STG_E_FILENOTFOUND, "IStorage->OpenStream should fail %08x\n", r);
    if (r == S_OK)
        FUNC8(stm);

    r = FUNC4(stg, stgname2, NULL, STGM_SHARE_EXCLUSIVE|STGM_READWRITE, NULL, 0, &stg2 );
    FUNC12(r==STG_E_FILENOTFOUND, "IStorage->OpenStorage should fail %08x\n", r);
    if (r == S_OK)
        FUNC6(stg2);

    r = FUNC4(stg, stmname2, NULL, STGM_TRANSACTED|STGM_SHARE_EXCLUSIVE|STGM_READWRITE, NULL, 0, &stg2 );
    FUNC12(r==STG_E_FILENOTFOUND, "IStorage->OpenStream failed %08x\n", r);

    r = FUNC5(stg, stmname2, NULL, STGM_SHARE_EXCLUSIVE|STGM_READWRITE, 0, &stm );
    FUNC12(r==S_OK, "IStorage->OpenStream should succeed %08x\n", r);
    if (r == S_OK)
        FUNC8(stm);

    r = FUNC4(stg, stgname, NULL, STGM_SHARE_EXCLUSIVE|STGM_READWRITE, NULL, 0, &stg2 );
    FUNC12(r==S_OK, "IStorage->OpenStorage should succeed %08x\n", r);
    if (r == S_OK)
    {
        r = FUNC4(stg2, stgname, NULL, STGM_SHARE_EXCLUSIVE|STGM_READWRITE, NULL, 0, &stg3 );
        FUNC12(r==S_OK, "IStorage->OpenStorage should succeed %08x\n", r);
        if (r == S_OK)
            FUNC6(stg3);

        r = FUNC4(stg2, stgname2, NULL, STGM_SHARE_EXCLUSIVE|STGM_READWRITE, NULL, 0, &stg3 );
        FUNC12(r==STG_E_FILENOTFOUND, "IStorage->OpenStorage should fail %08x\n", r);
        if (r == S_OK)
            FUNC6(stg3);

        FUNC6(stg2);
    }

    FUNC6(stg);

    ret = FUNC0(filenameA);
    FUNC12(ret, "deleted file\n");
}