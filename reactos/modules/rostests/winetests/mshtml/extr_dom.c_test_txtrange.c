
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IHTMLTxtRange ;
typedef int IHTMLSelectionObject ;
typedef int IHTMLElement ;
typedef int IHTMLDocument2 ;
typedef int IDispatch ;
typedef scalar_t__ HRESULT ;


 int ET_BODY ;
 scalar_t__ E_INVALIDARG ;
 int FALSE ;
 scalar_t__ IDispatch_QueryInterface (int *,int *,void**) ;
 int IDispatch_Release (int *) ;
 scalar_t__ IHTMLDocument2_get_selection (int *,int **) ;
 int IHTMLElement_Release (int *) ;
 int IHTMLSelectionObject_Release (int *) ;
 scalar_t__ IHTMLSelectionObject_createRange (int *,int **) ;
 int IHTMLTxtRange_Release (int *) ;
 scalar_t__ IHTMLTxtRange_moveToElementText (int *,int *) ;
 int IID_IHTMLSelectionObject ;
 int IID_IHTMLTxtRange ;
 scalar_t__ S_OK ;
 int TRUE ;
 int VARIANT_FALSE ;
 int VARIANT_TRUE ;
 int characterW ;
 int * doc_get_body (int *) ;
 int ok (int,char*,scalar_t__) ;
 int * range_duplicate (int *) ;
 int selection_iids ;
 int * test_create_body_range (int *) ;
 int test_disp (int *,int *,char*) ;
 int test_ifaces (int *,int ) ;
 int test_range_collapse (int *,int ) ;
 int test_range_expand (int *,int ,int ,char*) ;
 int test_range_inrange (int *,int *,int ) ;
 int test_range_isequal (int *,int *,int ) ;
 int test_range_move (int *,int ,int,int) ;
 int test_range_moveend (int *,int ,int,int) ;
 int test_range_movestart (int *,int ,int,int) ;
 int test_range_parent (int *,int ) ;
 int test_range_paste_html (int *,char*) ;
 int test_range_put_text (int *,char*) ;
 int test_range_set_end_point (int *,char*,int *,scalar_t__) ;
 int test_range_text (int *,char*) ;
 int texteditW ;
 int wordW ;

__attribute__((used)) static void test_txtrange(IHTMLDocument2 *doc)
{
    IHTMLTxtRange *body_range, *range, *range2;
    IHTMLSelectionObject *selection;
    IDispatch *disp_range;
    IHTMLElement *body;
    HRESULT hres;

    body_range = test_create_body_range(doc);

    test_disp((IUnknown*)body_range, &IID_IHTMLTxtRange, "[object]");

    test_range_text(body_range, "test abc 123\r\nit's text");

    range = range_duplicate(body_range);
    range2 = range_duplicate(body_range);

    test_range_isequal(range, range2, VARIANT_TRUE);

    test_range_text(range, "test abc 123\r\nit's text");
    test_range_text(body_range, "test abc 123\r\nit's text");

    test_range_collapse(range, TRUE);
    test_range_isequal(range, range2, VARIANT_FALSE);
    test_range_inrange(range, range2, VARIANT_FALSE);
    test_range_inrange(range2, range, VARIANT_TRUE);
    IHTMLTxtRange_Release(range2);

    test_range_expand(range, wordW, VARIANT_TRUE, "test ");
    test_range_expand(range, wordW, VARIANT_FALSE, "test ");
    test_range_move(range, characterW, 2, 2);
    test_range_expand(range, wordW, VARIANT_TRUE, "test ");

    test_range_collapse(range, FALSE);
    test_range_expand(range, wordW, VARIANT_TRUE, "abc ");

    test_range_collapse(range, FALSE);
    test_range_expand(range, wordW, VARIANT_TRUE, "123");
    test_range_expand(range, wordW, VARIANT_FALSE, "123");
    test_range_move(range, characterW, 2, 2);
    test_range_expand(range, wordW, VARIANT_TRUE, "123");
    test_range_moveend(range, characterW, -5, -5);
    test_range_text(range, ((void*)0));
    test_range_moveend(range, characterW, 3, 3);
    test_range_text(range, "c 1");
    test_range_expand(range, texteditW, VARIANT_TRUE, "test abc 123\r\nit's text");
    test_range_collapse(range, TRUE);
    test_range_move(range, characterW, 4, 4);
    test_range_moveend(range, characterW, 1, 1);
    test_range_text(range, " ");
    test_range_move(range, wordW, 1, 1);
    test_range_moveend(range, characterW, 2, 2);
    test_range_text(range, "ab");

    IHTMLTxtRange_Release(range);

    range = range_duplicate(body_range);

    test_range_text(range, "test abc 123\r\nit's text");
    test_range_move(range, characterW, 3, 3);
    test_range_moveend(range, characterW, 1, 1);
    test_range_text(range, "t");
    test_range_moveend(range, characterW, 3, 3);
    test_range_text(range, "t ab");
    test_range_moveend(range, characterW, -2, -2);
    test_range_text(range, "t ");
    test_range_move(range, characterW, 6, 6);
    test_range_moveend(range, characterW, 3, 3);
    test_range_text(range, "123");
    test_range_moveend(range, characterW, 2, 2);
    test_range_text(range, "123\r\ni");

    IHTMLTxtRange_Release(range);

    range = range_duplicate(body_range);

    test_range_move(range, wordW, 1, 1);
    test_range_moveend(range, characterW, 2, 2);
    test_range_text(range, "ab");

    test_range_move(range, characterW, -2, -2);
    test_range_moveend(range, characterW, 2, 2);
    test_range_text(range, "t ");

    test_range_move(range, wordW, 3, 3);
    test_range_move(range, wordW, -2, -2);
    test_range_moveend(range, characterW, 2, 2);
    test_range_text(range, "ab");

    test_range_move(range, characterW, -6, -5);
    test_range_moveend(range, characterW, -1, 0);
    test_range_moveend(range, characterW, -6, 0);
    test_range_move(range, characterW, 2, 2);
    test_range_moveend(range, characterW, 2, 2);
    test_range_text(range, "st");
    test_range_moveend(range, characterW, -6, -4);
    test_range_moveend(range, characterW, 2, 2);

    IHTMLTxtRange_Release(range);

    range = range_duplicate(body_range);

    test_range_move(range, wordW, 2, 2);
    test_range_moveend(range, characterW, 2, 2);
    test_range_text(range, "12");

    test_range_move(range, characterW, 15, 14);
    test_range_move(range, characterW, -2, -2);
    test_range_moveend(range, characterW, 3, 2);
    test_range_text(range, "t");
    test_range_moveend(range, characterW, -1, -1);
    test_range_text(range, "t");
    test_range_expand(range, wordW, VARIANT_TRUE, "text");
    test_range_move(range, characterW, -2, -2);
    test_range_moveend(range, characterW, 2, 2);
    test_range_text(range, "s ");
    test_range_move(range, characterW, 100, 7);
    test_range_move(range, wordW, 1, 0);
    test_range_move(range, characterW, -2, -2);
    test_range_moveend(range, characterW, 3, 2);
    test_range_text(range, "t");

    IHTMLTxtRange_Release(range);

    range = range_duplicate(body_range);

    test_range_collapse(range, TRUE);
    test_range_expand(range, wordW, VARIANT_TRUE, "test ");
    test_range_put_text(range, "word");
    test_range_text(body_range, "wordabc 123\r\nit's text");
    test_range_text(range, ((void*)0));
    test_range_moveend(range, characterW, 3, 3);
    test_range_text(range, "abc");
    test_range_movestart(range, characterW, -2, -2);
    test_range_text(range, "rdabc");
    test_range_movestart(range, characterW, 3, 3);
    test_range_text(range, "bc");
    test_range_movestart(range, characterW, 4, 4);
    test_range_text(range, ((void*)0));
    test_range_movestart(range, characterW, -3, -3);
    test_range_text(range, "c 1");
    test_range_movestart(range, characterW, -7, -6);
    test_range_text(range, "wordabc 1");
    test_range_movestart(range, characterW, 100, 22);
    test_range_text(range, ((void*)0));

    IHTMLTxtRange_Release(range);

    hres = IHTMLDocument2_get_selection(doc, &selection);
    ok(hres == S_OK, "IHTMLDocument2_get_selection failed: %08x\n", hres);

    test_disp((IUnknown*)selection, &IID_IHTMLSelectionObject, "[object]");
    test_ifaces((IUnknown*)selection, selection_iids);

    hres = IHTMLSelectionObject_createRange(selection, &disp_range);
    ok(hres == S_OK, "IHTMLSelectionObject_createRange failed: %08x\n", hres);
    IHTMLSelectionObject_Release(selection);

    hres = IDispatch_QueryInterface(disp_range, &IID_IHTMLTxtRange, (void **)&range);
    ok(hres == S_OK, "Could not get IID_IHTMLTxtRange interface: 0x%08x\n", hres);
    IDispatch_Release(disp_range);

    test_range_text(range, ((void*)0));
    test_range_moveend(range, characterW, 3, 3);
    test_range_text(range, "wor");
    test_range_parent(range, ET_BODY);
    test_range_expand(range, texteditW, VARIANT_TRUE, "wordabc 123\r\nit's text");
    test_range_expand(range, texteditW, VARIANT_TRUE, "wordabc 123\r\nit's text");
    test_range_move(range, characterW, 3, 3);
    test_range_expand(range, wordW, VARIANT_TRUE, "wordabc ");
    test_range_moveend(range, characterW, -4, -4);
    test_range_put_text(range, "abc def ");
    test_range_expand(range, texteditW, VARIANT_TRUE, "abc def abc 123\r\nit's text");
    test_range_move(range, wordW, 1, 1);
    test_range_movestart(range, characterW, -1, -1);
    test_range_text(range, " ");
    test_range_move(range, wordW, 1, 1);
    test_range_moveend(range, characterW, 3, 3);
    test_range_text(range, "def");
    test_range_put_text(range, "xyz");
    test_range_moveend(range, characterW, 1, 1);
    test_range_move(range, wordW, 1, 1);
    test_range_moveend(range, characterW, 2, 2);
    test_range_text(range, "ab");

    body = doc_get_body(doc);

    hres = IHTMLTxtRange_moveToElementText(range, body);
    ok(hres == S_OK, "moveToElementText failed: %08x\n", hres);

    test_range_text(range, "abc xyz abc 123\r\nit's text");
    test_range_parent(range, ET_BODY);

    test_range_move(range, wordW, 1, 1);
    test_range_moveend(range, characterW, 12, 12);
    test_range_text(range, "xyz abc 123");

    test_range_collapse(range, VARIANT_TRUE);
    test_range_paste_html(range, "<br>paste<br>");
    test_range_text(range, ((void*)0));

    test_range_moveend(range, characterW, 3, 3);
    test_range_text(range, "xyz");

    hres = IHTMLTxtRange_moveToElementText(range, body);
    ok(hres == S_OK, "moveToElementText failed: %08x\n", hres);

    test_range_text(range, "abc \r\npaste\r\nxyz abc 123\r\nit's text");

    test_range_move(range, wordW, 2, 2);
    test_range_collapse(range, VARIANT_TRUE);
    test_range_moveend(range, characterW, 5, 5);
    test_range_text(range, "paste");

    range2 = range_duplicate(range);

    test_range_set_end_point(range, "starttostart", body_range, S_OK);
    test_range_text(range, "abc \r\npaste");

    test_range_set_end_point(range, "endtoend", body_range, S_OK);
    test_range_text(range, "abc \r\npaste\r\nxyz abc 123\r\nit's text");

    test_range_set_end_point(range, "starttoend", range2, S_OK);
    test_range_text(range, "\r\nxyz abc 123\r\nit's text");

    test_range_set_end_point(range, "starttostart", body_range, S_OK);
    test_range_set_end_point(range, "endtostart", range2, S_OK);
    test_range_text(range, "abc ");

    test_range_set_end_point(range, "starttoend", body_range, S_OK);
    test_range_text(range, "paste\r\nxyz abc 123\r\nit's text");

    test_range_set_end_point(range, "EndToStart", body_range, S_OK);
    test_range_text(range, "abc ");

    test_range_set_end_point(range, "xxx", body_range, E_INVALIDARG);

    IHTMLTxtRange_Release(range);
    IHTMLTxtRange_Release(range2);
    IHTMLTxtRange_Release(body_range);
    IHTMLElement_Release(body);

}
