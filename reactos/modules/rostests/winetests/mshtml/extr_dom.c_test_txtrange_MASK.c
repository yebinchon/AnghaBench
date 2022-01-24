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
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IHTMLTxtRange ;
typedef  int /*<<< orphan*/  IHTMLSelectionObject ;
typedef  int /*<<< orphan*/  IHTMLElement ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  ET_BODY ; 
 scalar_t__ E_INVALIDARG ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IHTMLSelectionObject ; 
 int /*<<< orphan*/  IID_IHTMLTxtRange ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VARIANT_FALSE ; 
 int /*<<< orphan*/  VARIANT_TRUE ; 
 int /*<<< orphan*/  characterW ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  selection_iids ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  texteditW ; 
 int /*<<< orphan*/  wordW ; 

__attribute__((used)) static void FUNC26(IHTMLDocument2 *doc)
{
    IHTMLTxtRange *body_range, *range, *range2;
    IHTMLSelectionObject *selection;
    IDispatch *disp_range;
    IHTMLElement *body;
    HRESULT hres;

    body_range = FUNC11(doc);

    FUNC12((IUnknown*)body_range, &IID_IHTMLTxtRange, "[object]");

    FUNC25(body_range, "test abc 123\r\nit's text");

    range = FUNC10(body_range);
    range2 = FUNC10(body_range);

    FUNC17(range, range2, VARIANT_TRUE);

    FUNC25(range, "test abc 123\r\nit's text");
    FUNC25(body_range, "test abc 123\r\nit's text");

    FUNC14(range, TRUE);
    FUNC17(range, range2, VARIANT_FALSE);
    FUNC16(range, range2, VARIANT_FALSE);
    FUNC16(range2, range, VARIANT_TRUE);
    FUNC6(range2);

    FUNC15(range, wordW, VARIANT_TRUE, "test ");
    FUNC15(range, wordW, VARIANT_FALSE, "test ");
    FUNC18(range, characterW, 2, 2);
    FUNC15(range, wordW, VARIANT_TRUE, "test ");

    FUNC14(range, FALSE);
    FUNC15(range, wordW, VARIANT_TRUE, "abc ");

    FUNC14(range, FALSE);
    FUNC15(range, wordW, VARIANT_TRUE, "123");
    FUNC15(range, wordW, VARIANT_FALSE, "123");
    FUNC18(range, characterW, 2, 2);
    FUNC15(range, wordW, VARIANT_TRUE, "123");
    FUNC19(range, characterW, -5, -5);
    FUNC25(range, NULL);
    FUNC19(range, characterW, 3, 3);
    FUNC25(range, "c 1");
    FUNC15(range, texteditW, VARIANT_TRUE, "test abc 123\r\nit's text");
    FUNC14(range, TRUE);
    FUNC18(range, characterW, 4, 4);
    FUNC19(range, characterW, 1, 1);
    FUNC25(range, " ");
    FUNC18(range, wordW, 1, 1);
    FUNC19(range, characterW, 2, 2);
    FUNC25(range, "ab");

    FUNC6(range);

    range = FUNC10(body_range);

    FUNC25(range, "test abc 123\r\nit's text");
    FUNC18(range, characterW, 3, 3);
    FUNC19(range, characterW, 1, 1);
    FUNC25(range, "t");
    FUNC19(range, characterW, 3, 3);
    FUNC25(range, "t ab");
    FUNC19(range, characterW, -2, -2);
    FUNC25(range, "t ");
    FUNC18(range, characterW, 6, 6);
    FUNC19(range, characterW, 3, 3);
    FUNC25(range, "123");
    FUNC19(range, characterW, 2, 2);
    FUNC25(range, "123\r\ni");

    FUNC6(range);

    range = FUNC10(body_range);

    FUNC18(range, wordW, 1, 1);
    FUNC19(range, characterW, 2, 2);
    FUNC25(range, "ab");

    FUNC18(range, characterW, -2, -2);
    FUNC19(range, characterW, 2, 2);
    FUNC25(range, "t ");

    FUNC18(range, wordW, 3, 3);
    FUNC18(range, wordW, -2, -2);
    FUNC19(range, characterW, 2, 2);
    FUNC25(range, "ab");

    FUNC18(range, characterW, -6, -5);
    FUNC19(range, characterW, -1, 0);
    FUNC19(range, characterW, -6, 0);
    FUNC18(range, characterW, 2, 2);
    FUNC19(range, characterW, 2, 2);
    FUNC25(range, "st");
    FUNC19(range, characterW, -6, -4);
    FUNC19(range, characterW, 2, 2);

    FUNC6(range);

    range = FUNC10(body_range);

    FUNC18(range, wordW, 2, 2);
    FUNC19(range, characterW, 2, 2);
    FUNC25(range, "12");

    FUNC18(range, characterW, 15, 14);
    FUNC18(range, characterW, -2, -2);
    FUNC19(range, characterW, 3, 2);
    FUNC25(range, "t");
    FUNC19(range, characterW, -1, -1);
    FUNC25(range, "t");
    FUNC15(range, wordW, VARIANT_TRUE, "text");
    FUNC18(range, characterW, -2, -2);
    FUNC19(range, characterW, 2, 2);
    FUNC25(range, "s ");
    FUNC18(range, characterW, 100, 7);
    FUNC18(range, wordW, 1, 0);
    FUNC18(range, characterW, -2, -2);
    FUNC19(range, characterW, 3, 2);
    FUNC25(range, "t");

    FUNC6(range);

    range = FUNC10(body_range);

    FUNC14(range, TRUE);
    FUNC15(range, wordW, VARIANT_TRUE, "test ");
    FUNC23(range, "word");
    FUNC25(body_range, "wordabc 123\r\nit's text");
    FUNC25(range, NULL);
    FUNC19(range, characterW, 3, 3);
    FUNC25(range, "abc");
    FUNC20(range, characterW, -2, -2);
    FUNC25(range, "rdabc");
    FUNC20(range, characterW, 3, 3);
    FUNC25(range, "bc");
    FUNC20(range, characterW, 4, 4);
    FUNC25(range, NULL);
    FUNC20(range, characterW, -3, -3);
    FUNC25(range, "c 1");
    FUNC20(range, characterW, -7, -6);
    FUNC25(range, "wordabc 1");
    FUNC20(range, characterW, 100, 22);
    FUNC25(range, NULL);

    FUNC6(range);

    hres = FUNC2(doc, &selection);
    FUNC9(hres == S_OK, "IHTMLDocument2_get_selection failed: %08x\n", hres);

    FUNC12((IUnknown*)selection, &IID_IHTMLSelectionObject, "[object]");
    FUNC13((IUnknown*)selection, selection_iids);

    hres = FUNC5(selection, &disp_range);
    FUNC9(hres == S_OK, "IHTMLSelectionObject_createRange failed: %08x\n", hres);
    FUNC4(selection);

    hres = FUNC0(disp_range, &IID_IHTMLTxtRange, (void **)&range);
    FUNC9(hres == S_OK, "Could not get IID_IHTMLTxtRange interface: 0x%08x\n", hres);
    FUNC1(disp_range);

    FUNC25(range, NULL);
    FUNC19(range, characterW, 3, 3);
    FUNC25(range, "wor");
    FUNC21(range, ET_BODY);
    FUNC15(range, texteditW, VARIANT_TRUE, "wordabc 123\r\nit's text");
    FUNC15(range, texteditW, VARIANT_TRUE, "wordabc 123\r\nit's text");
    FUNC18(range, characterW, 3, 3);
    FUNC15(range, wordW, VARIANT_TRUE, "wordabc ");
    FUNC19(range, characterW, -4, -4);
    FUNC23(range, "abc def ");
    FUNC15(range, texteditW, VARIANT_TRUE, "abc def abc 123\r\nit's text");
    FUNC18(range, wordW, 1, 1);
    FUNC20(range, characterW, -1, -1);
    FUNC25(range, " ");
    FUNC18(range, wordW, 1, 1);
    FUNC19(range, characterW, 3, 3);
    FUNC25(range, "def");
    FUNC23(range, "xyz");
    FUNC19(range, characterW, 1, 1);
    FUNC18(range, wordW, 1, 1);
    FUNC19(range, characterW, 2, 2);
    FUNC25(range, "ab");

    body = FUNC8(doc);

    hres = FUNC7(range, body);
    FUNC9(hres == S_OK, "moveToElementText failed: %08x\n", hres);

    FUNC25(range, "abc xyz abc 123\r\nit's text");
    FUNC21(range, ET_BODY);

    FUNC18(range, wordW, 1, 1);
    FUNC19(range, characterW, 12, 12);
    FUNC25(range, "xyz abc 123");

    FUNC14(range, VARIANT_TRUE);
    FUNC22(range, "<br>paste<br>");
    FUNC25(range, NULL);

    FUNC19(range, characterW, 3, 3);
    FUNC25(range, "xyz");

    hres = FUNC7(range, body);
    FUNC9(hres == S_OK, "moveToElementText failed: %08x\n", hres);

    FUNC25(range, "abc \r\npaste\r\nxyz abc 123\r\nit's text");

    FUNC18(range, wordW, 2, 2);
    FUNC14(range, VARIANT_TRUE);
    FUNC19(range, characterW, 5, 5);
    FUNC25(range, "paste");

    range2 = FUNC10(range);

    FUNC24(range, "starttostart", body_range, S_OK);
    FUNC25(range, "abc \r\npaste");

    FUNC24(range, "endtoend", body_range, S_OK);
    FUNC25(range, "abc \r\npaste\r\nxyz abc 123\r\nit's text");

    FUNC24(range, "starttoend", range2, S_OK);
    FUNC25(range, "\r\nxyz abc 123\r\nit's text");

    FUNC24(range, "starttostart", body_range, S_OK);
    FUNC24(range, "endtostart", range2, S_OK);
    FUNC25(range, "abc ");

    FUNC24(range, "starttoend", body_range, S_OK);
    FUNC25(range, "paste\r\nxyz abc 123\r\nit's text");

    FUNC24(range, "EndToStart", body_range, S_OK);
    FUNC25(range, "abc ");

    FUNC24(range, "xxx", body_range, E_INVALIDARG);

    FUNC6(range);
    FUNC6(range2);
    FUNC6(body_range);
    FUNC3(body);

}