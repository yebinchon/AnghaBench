
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int data ;
typedef int buffer ;
typedef unsigned char WCHAR ;
typedef int * HSTRING_TABLE ;
typedef unsigned int DWORD ;


 int ST_CASE_SENSITIVE_COMPARE ;
 unsigned char* String ;
 unsigned char* foo ;
 int memcmp (char*,unsigned int*,int) ;
 int memset (char*,int,int) ;
 int ok (int,char*,...) ;
 unsigned int pStringTableAddString (int *,unsigned char*,int ) ;
 unsigned int pStringTableAddStringEx (int *,unsigned char*,int,unsigned int*,int) ;
 int pStringTableDestroy (int *) ;
 int * pStringTableDuplicate (int *) ;
 int * pStringTableInitialize () ;
 int * pStringTableInitializeEx (int,int ) ;
 unsigned int pStringTableLookUpStringEx (int *,unsigned char*,int ,char*,int) ;
 unsigned char* string ;

__attribute__((used)) static void test_StringTableLookUpStringEx(void)
{
    static WCHAR uilevel[] = {'U','I','L','E','V','E','L',0};
    DWORD retval, retval2, hstring, hString, hfoo, data;
    HSTRING_TABLE table, table2;
    char buffer[4];

    table = pStringTableInitialize();
    ok(table != ((void*)0),"Failed to Initialize String Table\n");

    hstring = pStringTableAddString(table, string, 0);
    ok(hstring != ~0u, "failed to add 'string' to string table\n");

    hString = pStringTableAddString(table, String, 0);
    ok(hString != ~0u,"failed to add 'String' to string table\n");

    hfoo = pStringTableAddString(table, foo, 0);
    ok(hfoo != ~0u, "failed to add 'foo' to string table\n");

    table2 = pStringTableDuplicate(table);
    ok(table2 != ((void*)0), "Failed to duplicate String Table\n");


    retval = pStringTableLookUpStringEx(table, string, 0, ((void*)0), 0);
    ok(retval != ~0u, "Failed find string in String Table 1\n");
    ok(retval == hstring,
        "Lookup for string (%x) does not match previous handle (%x) in String Table 1\n",
        retval, hstring);

    retval = pStringTableLookUpStringEx(table2, string, 0, ((void*)0), 0);
    ok(retval != ~0u, "Failed find string in String Table 2\n");

    retval = pStringTableLookUpStringEx(table, String, 0, ((void*)0), 0);
    ok(retval != ~0u, "Failed find String in String Table 1\n");

    retval = pStringTableLookUpStringEx(table2, String, 0, ((void*)0), 0);
    ok(retval != ~0u, "Failed find String in String Table 2\n");

    retval=pStringTableLookUpStringEx(table, foo, 0, ((void*)0), 0);
    ok(retval != ~0u, "Failed find foo in String Table 1\n");
    ok(retval == hfoo,
        "Lookup for foo (%x) does not match previous handle (%x) in String Table 1\n",
        retval, hfoo);

    retval = pStringTableLookUpStringEx(table2, foo, 0, ((void*)0), 0);
    ok(retval != ~0u, "Failed find foo in String Table 2\n");


    retval = pStringTableLookUpStringEx(table, string,ST_CASE_SENSITIVE_COMPARE, ((void*)0), 0);
    retval2 = pStringTableLookUpStringEx(table, String, ST_CASE_SENSITIVE_COMPARE, ((void*)0), 0);
    ok(retval != retval2, "Lookup of string equals String in Table 1\n");
    ok(retval == hString,
        "Lookup for String (%x) does not match previous handle (%x) in String Table 1\n",
        retval, hString);

    pStringTableDestroy(table);

    table = pStringTableInitializeEx(0x1000, 0);
    ok(table != ((void*)0), "failed to initialize string table\n");

    data = 0xaaaaaaaa;
    retval = pStringTableAddStringEx(table, uilevel, 0x5, &data, sizeof(data));
    ok(retval != ~0u, "failed to add 'UILEVEL' to string table\n");

    memset(buffer, 0x55, sizeof(buffer));
    retval = pStringTableLookUpStringEx(table, uilevel, ST_CASE_SENSITIVE_COMPARE, buffer, 0);
    ok(retval != ~0u, "failed find 'UILEVEL' in string table\n");
    ok(memcmp(buffer, &data, 4), "unexpected data\n");

    memset(buffer, 0x55, sizeof(buffer));
    retval = pStringTableLookUpStringEx(table, uilevel, ST_CASE_SENSITIVE_COMPARE, buffer, 2);
    ok(retval != ~0u, "failed find 'UILEVEL' in string table\n");
    ok(!memcmp(buffer, &data, 2), "unexpected data\n");

    memset(buffer, 0x55, sizeof(buffer));
    retval = pStringTableLookUpStringEx(table, uilevel, ST_CASE_SENSITIVE_COMPARE, buffer, sizeof(buffer));
    ok(retval != ~0u, "failed find 'UILEVEL' in string table\n");
    ok(!memcmp(buffer, &data, 4), "unexpected data\n");

    pStringTableDestroy(table);
    pStringTableDestroy(table2);
}
