
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int ST_CASE_SENSITIVE_COMPARE ;
 int String ;
 int foo ;
 int ok (int,char*,...) ;
 int pStringTableAddStringEx (int *,int ,int ,int*,int) ;
 int pStringTableDestroy (int *) ;
 int pStringTableGetExtraData (int *,int,int*,int) ;
 int * pStringTableInitialize () ;
 int * pStringTableInitializeEx (int,int ) ;
 int string ;

__attribute__((used)) static void test_StringTableAddStringEx(void)
{
    DWORD retval, hstring, hString, hfoo, extra;
    HANDLE table;
    BOOL ret;

    table = pStringTableInitialize();
    ok(table != ((void*)0),"Failed to Initialize String Table\n");


    hstring = pStringTableAddStringEx(table, string, 0, ((void*)0), 0);
    ok(hstring != -1, "Failed to add string to String Table\n");

    retval = pStringTableAddStringEx(table, String, 0, ((void*)0), 0);
    ok(retval != -1, "Failed to add String to String Table\n");
    ok(hstring == retval, "string handle %x != String handle %x in String Table\n", hstring, retval);

    hfoo = pStringTableAddStringEx(table, foo, 0, ((void*)0), 0);
    ok(hfoo != -1, "Failed to add foo to String Table\n");
    ok(hfoo != hstring, "foo and string share the same ID %x in String Table\n", hfoo);


    hString = pStringTableAddStringEx(table, String, ST_CASE_SENSITIVE_COMPARE, ((void*)0), 0);
    ok(hstring != hString, "String handle and string share same ID %x in Table\n", hstring);

    pStringTableDestroy(table);


    table = pStringTableInitializeEx(4, 0);
    ok(table != ((void*)0), "Failed to Initialize String Table\n");

    extra = 10;
    hstring = pStringTableAddStringEx(table, string, 0, &extra, 4);
    ok(hstring != -1, "failed to add string, %d\n", hstring);

    extra = 0;
    ret = pStringTableGetExtraData(table, hstring, &extra, 4);
    ok(ret && extra == 10, "got %d, extra %d\n", ret, extra);

    extra = 11;
    hstring = pStringTableAddStringEx(table, string, 0, &extra, 4);
    ok(hstring != -1, "failed to add string, %d\n", hstring);

    extra = 0;
    ret = pStringTableGetExtraData(table, hstring, &extra, 4);
    ok(ret && extra == 10, "got %d, extra %d\n", ret, extra);

    pStringTableDestroy(table);
}
