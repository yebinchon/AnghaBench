
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HSTRING_TABLE ;
typedef int DWORD ;


 int ST_CASE_SENSITIVE_COMPARE ;
 int String ;
 int foo ;
 int ok (int,char*,...) ;
 int pStringTableAddString (int *,int ,int ) ;
 int pStringTableDestroy (int *) ;
 int * pStringTableInitialize () ;
 int string ;

__attribute__((used)) static void test_StringTableAddString(void)
{
    DWORD retval, hstring, hString, hfoo;
    HSTRING_TABLE table;

    table = pStringTableInitialize();
    ok(table != ((void*)0), "failed to initialize string table\n");


    hstring=pStringTableAddString(table,string,0);
    ok(hstring!=-1,"Failed to add string to String Table\n");

    retval=pStringTableAddString(table,String,0);
    ok(retval!=-1,"Failed to add String to String Table\n");
    ok(hstring==retval,"string handle %x != String handle %x in String Table\n", hstring, retval);

    hfoo=pStringTableAddString(table,foo,0);
    ok(hfoo!=-1,"Failed to add foo to String Table\n");
    ok(hfoo!=hstring,"foo and string share the same ID %x in String Table\n", hfoo);


    hString=pStringTableAddString(table,String,ST_CASE_SENSITIVE_COMPARE);
    ok(hstring!=hString,"String handle and string share same ID %x in Table\n", hstring);

    pStringTableDestroy(table);
}
