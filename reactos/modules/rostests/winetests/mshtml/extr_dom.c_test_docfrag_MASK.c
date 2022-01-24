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
typedef  int /*<<< orphan*/  elem_type_t ;
typedef  int /*<<< orphan*/  all_types ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  void IHTMLLocation ;
typedef  int /*<<< orphan*/  IHTMLElementCollection ;
typedef  int /*<<< orphan*/  IHTMLElement ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DIID_DispHTMLDocument ; 
#define  ET_BODY 133 
#define  ET_BR 132 
#define  ET_DIV 131 
#define  ET_HEAD 130 
#define  ET_HTML 129 
#define  ET_TITLE 128 
 scalar_t__ E_UNEXPECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(IHTMLDocument2 *doc)
{
    IHTMLDocument2 *frag, *owner_doc, *doc_node;
    IHTMLElement *div, *body, *br;
    IHTMLElementCollection *col;
    IHTMLLocation *location;
    HRESULT hres;

    static const elem_type_t all_types[] = {
        ET_HTML,
        ET_HEAD,
        ET_TITLE,
        ET_BODY,
        ET_DIV,
        ET_BR
    };

    frag = FUNC6(doc);

    FUNC13((IUnknown*)frag, &DIID_DispHTMLDocument, "[object]");

    body = (void*)0xdeadbeef;
    hres = FUNC2(frag, &body);
    FUNC11(hres == S_OK, "get_body failed: %08x\n", hres);
    FUNC11(!body, "body != NULL\n");

    location = (void*)0xdeadbeef;
    hres = FUNC3(frag, &location);
    FUNC11(hres == E_UNEXPECTED, "get_location failed: %08x\n", hres);
    FUNC11(location == (void*)0xdeadbeef, "location changed\n");

    br = FUNC12(doc, "BR");
    FUNC15(br, -1);
    FUNC16((IUnknown*)frag, (IUnknown*)br);
    FUNC15(br, 0);
    FUNC5(br);

    div = FUNC8(doc, "divid", TRUE);
    FUNC16((IUnknown*)div, (IUnknown*)frag);
    FUNC5(div);

    hres = FUNC1(doc, &col);
    FUNC11(hres == S_OK, "get_all failed: %08x\n", hres);
    FUNC14((IUnknown*)col, all_types, sizeof(all_types)/sizeof(all_types[0]));
    FUNC4(col);

    div = FUNC12(frag, "div");
    owner_doc = FUNC9((IUnknown*)div);
    doc_node = FUNC7(doc);
    FUNC11(FUNC10((IUnknown*)owner_doc, (IUnknown*)doc_node), "owner_doc != doc_node\n");
    FUNC0(doc_node);
    FUNC0(owner_doc);
    FUNC5(div);

    FUNC0(frag);
}