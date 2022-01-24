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
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int STGM_CREATE ; 
 int STGM_READ ; 
 int STGM_READWRITE ; 
 int STGM_SHARE_EXCLUSIVE ; 
 scalar_t__ STG_E_ACCESSDENIED ; 
 scalar_t__ STG_E_REVERTED ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  filename ; 
 int /*<<< orphan*/  filenameA ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 

__attribute__((used)) static void FUNC13(void)
{
    IStorage *stg, *stg2, *stg3;
    IStream *stm, *stm2;
    HRESULT r;
    static const WCHAR stgname[] = { 'P','E','R','M','S','T','G',0 };
    static const WCHAR stmname[] = { 'C','O','N','T','E','N','T','S',0 };
    static const WCHAR othername[] = { 'N','E','W','N','A','M','E',0 };
    BOOL ret;

    FUNC0(filenameA);

    /* create the file */
    r = FUNC11( filename, STGM_CREATE | STGM_SHARE_EXCLUSIVE |
                            STGM_READWRITE, 0, &stg);
    FUNC12(r==S_OK, "StgCreateDocfile failed\n");

    /* create a read/write storage and try to open it again */
    r = FUNC1(stg, stgname, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stg2);
    FUNC12(r==S_OK, "IStorage->CreateStorage failed, hr=%08x\n", r);

    if (r == S_OK)
    {
        r = FUNC4(stg, stgname, NULL, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stg3);
        FUNC12(r==STG_E_ACCESSDENIED, "IStorage->OpenStorage should fail %08x\n", r);

        if (r == S_OK)
            FUNC6(stg3);

        r = FUNC4(stg, stgname, NULL, STGM_READ | STGM_SHARE_EXCLUSIVE, 0, 0, &stg3);
        FUNC12(r==STG_E_ACCESSDENIED, "IStorage->OpenStorage should fail %08x\n", r);

        if (r == S_OK)
            FUNC6(stg3);

        /* cannot rename the storage while it's open */
        r = FUNC7(stg, stgname, othername);
        FUNC12(r==STG_E_ACCESSDENIED, "IStorage->RenameElement should fail %08x\n", r);
        if (FUNC10(r)) FUNC7(stg, othername, stgname);

        /* destroying an object while it's open invalidates it */
        r = FUNC3(stg, stgname);
        FUNC12(r==S_OK, "IStorage->DestroyElement failed, hr=%08x\n", r);

        r = FUNC2(stg2, stmname, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stm);
        FUNC12(r==STG_E_REVERTED, "IStorage->CreateStream failed, hr=%08x\n", r);

        if (r == S_OK)
            FUNC8(stm);

        FUNC6(stg2);
    }

    /* create a read/write stream and try to open it again */
    r = FUNC2(stg, stmname, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stm);
    FUNC12(r==S_OK, "IStorage->CreateStream failed, hr=%08x\n", r);

    if (r == S_OK)
    {
        r = FUNC5(stg, stmname, NULL, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, &stm2);
        FUNC12(r==STG_E_ACCESSDENIED, "IStorage->OpenStream should fail %08x\n", r);

        if (r == S_OK)
            FUNC8(stm2);

        r = FUNC5(stg, stmname, NULL, STGM_READ | STGM_SHARE_EXCLUSIVE, 0, &stm2);
        FUNC12(r==STG_E_ACCESSDENIED, "IStorage->OpenStream should fail %08x\n", r);

        if (r == S_OK)
            FUNC8(stm2);

        /* cannot rename the stream while it's open */
        r = FUNC7(stg, stmname, othername);
        FUNC12(r==STG_E_ACCESSDENIED, "IStorage->RenameElement should fail %08x\n", r);
        if (FUNC10(r)) FUNC7(stg, othername, stmname);

        /* destroying an object while it's open invalidates it */
        r = FUNC3(stg, stmname);
        FUNC12(r==S_OK, "IStorage->DestroyElement failed, hr=%08x\n", r);

        r = FUNC9(stm, "this shouldn't work\n", 20, NULL);
        FUNC12(r==STG_E_REVERTED, "IStream_Write should fail %08x\n", r);

        FUNC8(stm);
    }

    FUNC6(stg);

    ret = FUNC0(filenameA);
    FUNC12(ret, "deleted file\n");
}