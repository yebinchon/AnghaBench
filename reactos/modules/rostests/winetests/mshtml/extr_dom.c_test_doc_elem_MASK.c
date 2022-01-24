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
typedef  int /*<<< orphan*/  IHTMLElement ;
typedef  int /*<<< orphan*/  IHTMLDocument3 ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IHTMLDocument3 ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(IHTMLDocument2 *doc)
{
    IHTMLDocument2 *doc_node, *owner_doc;
    IHTMLElement *elem;
    IHTMLDocument3 *doc3;
    HRESULT hres;
    BSTR bstr;

    hres = FUNC0(doc, &IID_IHTMLDocument3, (void**)&doc3);
    FUNC10(hres == S_OK, "QueryInterface(IID_IHTMLDocument3) failed: %08x\n", hres);

    hres = FUNC2(doc, &bstr);
    FUNC10(hres == S_OK, "toString failed: %08x\n", hres);
    FUNC10(!FUNC11(bstr, "[object]"),
            "toString returned %s, expected [object]\n", FUNC15(bstr));
    FUNC6(bstr);

    hres = FUNC4(doc3, &elem);
    FUNC3(doc3);
    FUNC10(hres == S_OK, "get_documentElement failed: %08x\n", hres);

    FUNC14((IUnknown*)elem, "HTML");
    FUNC13((IUnknown*)elem, "HTML");

    doc_node = FUNC7(doc);
    owner_doc = FUNC8((IUnknown*)elem);
    FUNC10(FUNC9((IUnknown *)doc_node, (IUnknown *)owner_doc), "doc_node != owner_doc\n");
    FUNC1(owner_doc);

    owner_doc = FUNC8((IUnknown*)doc_node);
    FUNC10(!owner_doc, "owner_doc = %p\n", owner_doc);
    FUNC1(doc_node);

    FUNC12((IUnknown*)elem);

    FUNC5(elem);
}