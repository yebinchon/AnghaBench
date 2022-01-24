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
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ST_CASE_SENSITIVE_COMPARE ; 
 int /*<<< orphan*/  String ; 
 int /*<<< orphan*/  foo ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int*,int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  string ; 

__attribute__((used)) static void FUNC6(void)
{
    DWORD retval, hstring, hString, hfoo, extra;
    HANDLE table;
    BOOL ret;

    table = FUNC4();
    FUNC0(table != NULL,"Failed to Initialize String Table\n");

    /* case insensitive */
    hstring = FUNC1(table, string, 0, NULL, 0);
    FUNC0(hstring != -1, "Failed to add string to String Table\n");

    retval = FUNC1(table, String, 0, NULL, 0);
    FUNC0(retval != -1, "Failed to add String to String Table\n");
    FUNC0(hstring == retval, "string handle %x != String handle %x in String Table\n", hstring, retval);

    hfoo = FUNC1(table, foo, 0, NULL, 0);
    FUNC0(hfoo != -1, "Failed to add foo to String Table\n");
    FUNC0(hfoo != hstring, "foo and string share the same ID %x in String Table\n", hfoo);

    /* case sensitive */
    hString = FUNC1(table, String, ST_CASE_SENSITIVE_COMPARE, NULL, 0);
    FUNC0(hstring != hString, "String handle and string share same ID %x in Table\n", hstring);

    FUNC2(table);

    /* set same string twice but with different extra */
    table = FUNC5(4, 0);
    FUNC0(table != NULL, "Failed to Initialize String Table\n");

    extra = 10;
    hstring = FUNC1(table, string, 0, &extra, 4);
    FUNC0(hstring != -1, "failed to add string, %d\n", hstring);

    extra = 0;
    ret = FUNC3(table, hstring, &extra, 4);
    FUNC0(ret && extra == 10, "got %d, extra %d\n", ret, extra);

    extra = 11;
    hstring = FUNC1(table, string, 0, &extra, 4);
    FUNC0(hstring != -1, "failed to add string, %d\n", hstring);

    extra = 0;
    ret = FUNC3(table, hstring, &extra, 4);
    FUNC0(ret && extra == 10, "got %d, extra %d\n", ret, extra);

    FUNC2(table);
}