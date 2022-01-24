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
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  buffer ;
typedef  unsigned char WCHAR ;
typedef  int /*<<< orphan*/ * HSTRING_TABLE ;
typedef  unsigned int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ST_CASE_SENSITIVE_COMPARE ; 
 unsigned char* String ; 
 unsigned char* foo ; 
 int FUNC0 (char*,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *,unsigned char*,int,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 (int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ,char*,int) ; 
 unsigned char* string ; 

__attribute__((used)) static void FUNC10(void)
{
    static WCHAR uilevel[] = {'U','I','L','E','V','E','L',0};
    DWORD retval, retval2, hstring, hString, hfoo, data;
    HSTRING_TABLE table, table2;
    char buffer[4];

    table = FUNC7();
    FUNC2(table != NULL,"Failed to Initialize String Table\n");

    hstring = FUNC3(table, string, 0);
    FUNC2(hstring != ~0u, "failed to add 'string' to string table\n");

    hString = FUNC3(table, String, 0);
    FUNC2(hString != ~0u,"failed to add 'String' to string table\n");

    hfoo = FUNC3(table, foo, 0);
    FUNC2(hfoo != ~0u, "failed to add 'foo' to string table\n");

    table2 = FUNC6(table);
    FUNC2(table2 != NULL, "Failed to duplicate String Table\n");

    /* case insensitive */
    retval = FUNC9(table, string, 0, NULL, 0);
    FUNC2(retval != ~0u, "Failed find string in String Table 1\n");
    FUNC2(retval == hstring,
        "Lookup for string (%x) does not match previous handle (%x) in String Table 1\n",
        retval, hstring);

    retval = FUNC9(table2, string, 0, NULL, 0);
    FUNC2(retval != ~0u, "Failed find string in String Table 2\n");

    retval = FUNC9(table, String, 0, NULL, 0);
    FUNC2(retval != ~0u, "Failed find String in String Table 1\n");

    retval = FUNC9(table2, String, 0, NULL, 0);
    FUNC2(retval != ~0u, "Failed find String in String Table 2\n");

    retval=FUNC9(table, foo, 0, NULL, 0);
    FUNC2(retval != ~0u, "Failed find foo in String Table 1\n");
    FUNC2(retval == hfoo,
        "Lookup for foo (%x) does not match previous handle (%x) in String Table 1\n",
        retval, hfoo);

    retval = FUNC9(table2, foo, 0, NULL, 0);
    FUNC2(retval != ~0u, "Failed find foo in String Table 2\n");

    /* case sensitive */
    retval = FUNC9(table, string,ST_CASE_SENSITIVE_COMPARE, NULL, 0);
    retval2 = FUNC9(table, String, ST_CASE_SENSITIVE_COMPARE, NULL, 0);
    FUNC2(retval != retval2, "Lookup of string equals String in Table 1\n");
    FUNC2(retval == hString,
        "Lookup for String (%x) does not match previous handle (%x) in String Table 1\n",
        retval, hString);

    FUNC5(table);

    table = FUNC8(0x1000, 0);
    FUNC2(table != NULL, "failed to initialize string table\n");

    data = 0xaaaaaaaa;
    retval = FUNC4(table, uilevel, 0x5, &data, sizeof(data));
    FUNC2(retval != ~0u, "failed to add 'UILEVEL' to string table\n");

    FUNC1(buffer, 0x55, sizeof(buffer));
    retval = FUNC9(table, uilevel, ST_CASE_SENSITIVE_COMPARE, buffer, 0);
    FUNC2(retval != ~0u, "failed find 'UILEVEL' in string table\n");
    FUNC2(FUNC0(buffer, &data, 4), "unexpected data\n");

    FUNC1(buffer, 0x55, sizeof(buffer));
    retval = FUNC9(table, uilevel, ST_CASE_SENSITIVE_COMPARE, buffer, 2);
    FUNC2(retval != ~0u, "failed find 'UILEVEL' in string table\n");
    FUNC2(!FUNC0(buffer, &data, 2), "unexpected data\n");

    FUNC1(buffer, 0x55, sizeof(buffer));
    retval = FUNC9(table, uilevel, ST_CASE_SENSITIVE_COMPARE, buffer, sizeof(buffer));
    FUNC2(retval != ~0u, "failed find 'UILEVEL' in string table\n");
    FUNC2(!FUNC0(buffer, &data, 4), "unexpected data\n");

    FUNC5(table);
    FUNC5(table2);
}