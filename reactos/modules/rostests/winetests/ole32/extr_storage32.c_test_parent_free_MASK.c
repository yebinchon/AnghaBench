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
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  STATSTG ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IStorage ;
typedef  scalar_t__ HRESULT ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STATFLAG_NONAME ; 
 int STGM_CREATE ; 
 int STGM_READWRITE ; 
 int STGM_SHARE_EXCLUSIVE ; 
 int STGM_TRANSACTED ; 
 scalar_t__ STG_E_REVERTED ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  filename ; 
 int /*<<< orphan*/  filenameA ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 

__attribute__((used)) static void FUNC10(void)
{
    IStorage *stg = NULL, *stg2 = NULL, *stg3 = NULL;
    HRESULT r;
    IStream *stm = NULL;
    static const WCHAR stmname[] = { 'C','O','N','T','E','N','T','S',0 };
    static const WCHAR stgname[] = { 'P','E','R','M','S','T','G',0 };
    ULONG ref;
    STATSTG statstg;
    BOOL ret;

    FUNC0(filenameA);

    /* create the file */
    r = FUNC8( filename, STGM_CREATE | STGM_SHARE_EXCLUSIVE |
                            STGM_READWRITE |STGM_TRANSACTED, 0, &stg);
    FUNC9(r==S_OK, "StgCreateDocfile failed\n");

    /* create a new storage */
    r = FUNC1(stg, stgname, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stg2);
    FUNC9(r==S_OK, "IStorage->CreateStorage failed, hr=%08x\n", r);

    if (r == S_OK)
    {
        /* now create a stream inside the new storage */
        r = FUNC2(stg2, stmname, STGM_SHARE_EXCLUSIVE | STGM_READWRITE, 0, 0, &stm );
        FUNC9(r==S_OK, "IStorage->CreateStream failed\n");

        if (r == S_OK)
        {
            /* create a storage inside the new storage */
            r = FUNC1(stg2, stgname, STGM_SHARE_EXCLUSIVE | STGM_READWRITE, 0, 0, &stg3 );
            FUNC9(r==S_OK, "IStorage->CreateStorage failed\n");
        }

        /* free the parent */
        ref = FUNC3(stg2);
        FUNC9(ref == 0, "IStorage still has %u references\n", ref);

        /* child objects are invalid */
        if (r == S_OK)
        {
            r = FUNC7(stm, "this should fail\n", 17, NULL);
            FUNC9(r==STG_E_REVERTED, "IStream->Write should fail, hr=%x\n", r);

            FUNC6(stm);

            r = FUNC5(stg3, &statstg, STATFLAG_NONAME);
            FUNC9(r==STG_E_REVERTED, "IStorage_Stat should fail %08x\n", r);

            r = FUNC4(stg3, 1, 1);
            FUNC9(r==STG_E_REVERTED, "IStorage_Stat should fail %08x\n", r);

            FUNC3(stg3);
        }
    }

    FUNC3(stg);

    ret = FUNC0(filenameA);
    FUNC9(ret, "deleted file\n");
}