
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IHTMLTableRow ;
typedef int IHTMLTableCell ;
typedef int IHTMLElement ;
typedef int IDispatch ;
typedef scalar_t__ HRESULT ;


 scalar_t__ IDispatch_QueryInterface (int *,int *,void**) ;
 int IDispatch_Release (int *) ;
 int IHTMLTableCell_Release (int *) ;
 scalar_t__ IHTMLTableRow_deleteCell (int *,int ) ;
 scalar_t__ IHTMLTableRow_insertCell (int *,int ,int **) ;
 int IID_IHTMLTableCell ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 int ok (int,char*,...) ;
 int test_tr_possess (int *,int *,int,char*) ;

__attribute__((used)) static void test_tr_modify(IHTMLElement *elem, IHTMLTableRow *row)
{
    HRESULT hres;
    IDispatch *disp;
    IHTMLTableCell *cell;

    hres = IHTMLTableRow_deleteCell(row, 0);
    ok(hres == S_OK, "deleteCell failed: %08x\n", hres);
    test_tr_possess(elem, row, 1, "td2");

    hres = IHTMLTableRow_insertCell(row, 0, &disp);
    ok(hres == S_OK, "insertCell failed: %08x\n", hres);
    ok(disp != ((void*)0), "disp == NULL\n");
    hres = IDispatch_QueryInterface(disp, &IID_IHTMLTableCell, (void **)&cell);
    ok(hres == S_OK, "Could not get IID_IHTMLTableCell interface: %08x\n", hres);
    ok(cell != ((void*)0), "cell == NULL\n");
    if (SUCCEEDED(hres))
        IHTMLTableCell_Release(cell);
    test_tr_possess(elem, row, 2, "td2");
    IDispatch_Release(disp);
}
