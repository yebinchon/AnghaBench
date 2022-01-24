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
typedef  int /*<<< orphan*/ * HSTRING_TABLE ;
typedef  unsigned int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ST_CASE_SENSITIVE_COMPARE ; 
 int /*<<< orphan*/  String ; 
 int /*<<< orphan*/  foo ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  string ; 

__attribute__((used)) static void FUNC6(void)
{   
    DWORD retval, retval2, hstring, hString, hfoo;
    HSTRING_TABLE table, table2;

    table = FUNC4();
    FUNC0(table != NULL,"failed to initialize string table\n");

    hstring = FUNC1(table, string, 0);
    FUNC0(hstring != ~0u, "failed to add 'string' to string table\n");

    hString = FUNC1(table, String, 0);
    FUNC0(hString != ~0u,"failed to add 'String' to string table\n");

    hfoo = FUNC1(table, foo, 0);
    FUNC0(hfoo != ~0u, "failed to add 'foo' to string table\n");

    table2 = FUNC3(table);
    FUNC0(table2 != NULL, "Failed to duplicate String Table\n");

    /* case insensitive */
    retval=FUNC5(table,string,0);
    FUNC0(retval!=-1,"Failed find string in String Table 1\n");
    FUNC0(retval==hstring,
        "Lookup for string (%x) does not match previous handle (%x) in String Table 1\n",
        retval, hstring);    

    retval=FUNC5(table2,string,0);
    FUNC0(retval!=-1,"Failed find string in String Table 2\n");
    
    retval=FUNC5(table,String,0);
    FUNC0(retval!=-1,"Failed find String in String Table 1\n");

    retval=FUNC5(table2,String,0);
    FUNC0(retval!=-1,"Failed find String in String Table 2\n");    
    
    retval=FUNC5(table,foo,0);
    FUNC0(retval!=-1,"Failed find foo in String Table 1\n");    
    FUNC0(retval==hfoo,
        "Lookup for foo (%x) does not match previous handle (%x) in String Table 1\n",
        retval, hfoo);        
    
    retval=FUNC5(table2,foo,0);
    FUNC0(retval!=-1,"Failed find foo in String Table 2\n");    
    
    /* case sensitive */
    retval=FUNC5(table,string,ST_CASE_SENSITIVE_COMPARE);
    retval2=FUNC5(table,String,ST_CASE_SENSITIVE_COMPARE);    
    FUNC0(retval!=retval2,"Lookup of string equals String in Table 1\n");
    FUNC0(retval==hString,
        "Lookup for String (%x) does not match previous handle (%x) in String Table 1\n",
        retval, hString);

    FUNC2(table);
    FUNC2(table2);
}