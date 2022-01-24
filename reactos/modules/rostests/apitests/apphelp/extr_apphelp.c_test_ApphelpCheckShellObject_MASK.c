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
typedef  int ULONGLONG ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GUID_NULL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ ** objects ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(void)
{
    ULONGLONG flags;
    BOOL res;
    int i;

    if (!&pApphelpCheckShellObject)
    {
        FUNC5("ApphelpCheckShellObject not available\n");
        return;
    }

    for (i = 0; objects[i]; i++)
    {
        flags = 0xdeadbeef;
        FUNC1(0xdeadbeef);
        res = FUNC3(objects[i], FALSE, &flags);
        FUNC2(res && (flags == 0), "%s 0: got %d and 0x%x%08x with 0x%x (expected TRUE and 0)\n",
            FUNC6(objects[i]), res, (ULONG)(flags >> 32), (ULONG)flags, FUNC0());

        flags = 0xdeadbeef;
        FUNC1(0xdeadbeef);
        res = FUNC3(objects[i], TRUE, &flags);
        FUNC2(res && (flags == 0), "%s 1: got %d and 0x%x%08x with 0x%x (expected TRUE and 0)\n",
            FUNC6(objects[i]), res, (ULONG)(flags >> 32), (ULONG)flags, FUNC0());

    }

    /* NULL as pointer to flags is checked */
    FUNC1(0xdeadbeef);
    res = FUNC3(&GUID_NULL, FALSE, NULL);
    FUNC2(res, "%s 0: got %d with 0x%x (expected != FALSE)\n", FUNC6(&GUID_NULL), res, FUNC0());

    /* NULL as CLSID* crash on Windows */
    if (0)
    {
        flags = 0xdeadbeef;
        FUNC1(0xdeadbeef);
        res = FUNC3(NULL, FALSE, &flags);
        FUNC4("NULL as CLSID*: got %d and 0x%x%08x with 0x%x\n", res, (ULONG)(flags >> 32), (ULONG)flags, FUNC0());
    }
}