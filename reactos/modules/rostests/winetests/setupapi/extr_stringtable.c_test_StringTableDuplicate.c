
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HSTRING_TABLE ;


 int ok (int ,char*) ;
 int pStringTableDestroy (int *) ;
 int * pStringTableDuplicate (int *) ;
 int * pStringTableInitialize () ;

__attribute__((used)) static void test_StringTableDuplicate(void)
{
    HSTRING_TABLE table, table2;

    table = pStringTableInitialize();
    ok(table != ((void*)0),"Failed to Initialize String Table\n");

    table2=pStringTableDuplicate(table);
    ok(table2!=((void*)0),"Failed to duplicate String Table\n");

    pStringTableDestroy(table);
    pStringTableDestroy(table2);
}
