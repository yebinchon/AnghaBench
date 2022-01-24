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
typedef  int /*<<< orphan*/ * HSTRING_TABLE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * string ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(void)
{
    HSTRING_TABLE table;
    WCHAR *string2;
    DWORD id, id2;

    table = FUNC4();
    FUNC1(table != NULL, "Failed to Initialize String Table\n");

    id = FUNC2(table, string, 0);
    FUNC1(id != -1, "failed to add 'string' to string table\n");

    /* correct */
    id2 = FUNC5(table, string, 0);
    FUNC1(id2 == id, "got %d and %d\n", id2, id);

    string2 = FUNC6(table, id2);
    FUNC1(string2 != NULL, "failed to lookup string %d\n", id2);
    FUNC1(!FUNC0(string, string2), "got %s, expected %s\n", FUNC7(string2), FUNC7(string));

    FUNC3(table);
}