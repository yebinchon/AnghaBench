
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG ;
typedef int IHTMLTableRow ;
typedef int IHTMLTable ;
typedef int IDispatch ;
typedef int HRESULT ;


 int IDispatch_QueryInterface (int *,int *,void**) ;
 int IDispatch_Release (int *) ;
 int IHTMLTableRow_Release (int *) ;
 int IHTMLTableRow_get_rowIndex (int *,int*) ;
 int IHTMLTable_deleteRow (int *,int ) ;
 int IHTMLTable_insertRow (int *,int ,int **) ;
 int IID_IHTMLTableRow ;
 int S_OK ;
 int ok (int,char*,...) ;
 int test_table_length (int *,int) ;

__attribute__((used)) static void test_table_modify(IHTMLTable *table)
{
    IDispatch *disp;
    IHTMLTableRow *row;
    HRESULT hres;
    LONG index;

    test_table_length(table, 2);

    hres = IHTMLTable_insertRow(table, 0, &disp);
    ok(hres == S_OK, "insertRow failed: %08x\n", hres);
    ok(disp != ((void*)0), "disp == NULL\n");
    test_table_length(table, 3);
    if (hres != S_OK || disp == ((void*)0))
        return;

    hres = IDispatch_QueryInterface(disp, &IID_IHTMLTableRow, (void**)&row);
    IDispatch_Release(disp);

    ok(hres == S_OK, "QueryInterface failed: %08x\n", hres);
    ok(row != ((void*)0), "row == NULL\n");

    index = 0xdeadbeef;
    hres = IHTMLTableRow_get_rowIndex(row, &index);
    ok(hres == S_OK, "get_rowIndex failed: %08x\n", hres);
    ok(index == 0, "index = %d, expected 0\n", index);

    IHTMLTableRow_Release(row);

    hres = IHTMLTable_deleteRow(table, 0);
    ok(hres == S_OK, "deleteRow failed: %08x\n", hres);
    test_table_length(table, 2);
}
