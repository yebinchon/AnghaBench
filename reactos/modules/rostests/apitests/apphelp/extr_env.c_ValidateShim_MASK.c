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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  TAGREF ;
typedef  int TAGID ;
typedef  int TAG ;
typedef  int /*<<< orphan*/ * PDB ;
typedef  int /*<<< orphan*/ * HSDB ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  SDB_DATABASE_MAIN_SHIM ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

__attribute__((used)) static void FUNC7(TAGREF trLayer, const char* name)
{
    HSDB hsdb = FUNC3(SDB_DATABASE_MAIN_SHIM, NULL);
    FUNC1(hsdb != NULL, "Expected a valid handle\n");
    if (hsdb)
    {
        PDB pdb = NULL;
        TAGID tagid = 0xdeadbeef;
        WCHAR nameW[256] = { 0 };
        BOOL ret;

        FUNC0(nameW, name, FUNC6(name));

        ret = FUNC5(hsdb, trLayer, &pdb, &tagid);
        FUNC1(ret == TRUE, "Expected pSdbTagRefToTagID to succeed\n");
        if (ret)
        {
            TAG tag;
            FUNC1(pdb != NULL, "Expected pdb to be a valid pointer\n");
            FUNC1(tagid != 0 && tagid != 0xdeadbeef, "Expected tagid to be a valid tag id, was: 0x%x\n", tagid);
            tag = FUNC2(pdb, tagid);
            FUNC1(tag == 0x700b, "Expected tag to be 0x700b, was 0x%x\n", (DWORD)tag);
        }

        FUNC4(hsdb);
    }
}