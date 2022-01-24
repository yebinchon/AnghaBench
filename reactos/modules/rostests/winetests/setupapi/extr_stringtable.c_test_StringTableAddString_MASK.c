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
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ST_CASE_SENSITIVE_COMPARE ; 
 int /*<<< orphan*/  String ; 
 int /*<<< orphan*/  foo ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  string ; 

__attribute__((used)) static void FUNC4(void)
{
    DWORD retval, hstring, hString, hfoo;
    HSTRING_TABLE table;

    table = FUNC3();
    FUNC0(table != NULL, "failed to initialize string table\n");

    /* case insensitive */
    hstring=FUNC1(table,string,0);
    FUNC0(hstring!=-1,"Failed to add string to String Table\n");

    retval=FUNC1(table,String,0);
    FUNC0(retval!=-1,"Failed to add String to String Table\n");    
    FUNC0(hstring==retval,"string handle %x != String handle %x in String Table\n", hstring, retval);        
    
    hfoo=FUNC1(table,foo,0);
    FUNC0(hfoo!=-1,"Failed to add foo to String Table\n");        
    FUNC0(hfoo!=hstring,"foo and string share the same ID %x in String Table\n", hfoo);            
    
    /* case sensitive */    
    hString=FUNC1(table,String,ST_CASE_SENSITIVE_COMPARE);
    FUNC0(hstring!=hString,"String handle and string share same ID %x in Table\n", hstring);        

    FUNC2(table);
}