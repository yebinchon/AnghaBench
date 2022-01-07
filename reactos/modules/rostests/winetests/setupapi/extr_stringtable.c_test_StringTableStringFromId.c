
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * HSTRING_TABLE ;
typedef int DWORD ;


 int lstrcmpiW (int *,int *) ;
 int ok (int,char*,...) ;
 int pStringTableAddString (int *,int *,int ) ;
 int pStringTableDestroy (int *) ;
 int * pStringTableInitialize () ;
 int pStringTableLookUpString (int *,int *,int ) ;
 int * pStringTableStringFromId (int *,int) ;
 int * string ;
 int wine_dbgstr_w (int *) ;

__attribute__((used)) static void test_StringTableStringFromId(void)
{
    HSTRING_TABLE table;
    WCHAR *string2;
    DWORD id, id2;

    table = pStringTableInitialize();
    ok(table != ((void*)0), "Failed to Initialize String Table\n");

    id = pStringTableAddString(table, string, 0);
    ok(id != -1, "failed to add 'string' to string table\n");


    id2 = pStringTableLookUpString(table, string, 0);
    ok(id2 == id, "got %d and %d\n", id2, id);

    string2 = pStringTableStringFromId(table, id2);
    ok(string2 != ((void*)0), "failed to lookup string %d\n", id2);
    ok(!lstrcmpiW(string, string2), "got %s, expected %s\n", wine_dbgstr_w(string2), wine_dbgstr_w(string));

    pStringTableDestroy(table);
}
