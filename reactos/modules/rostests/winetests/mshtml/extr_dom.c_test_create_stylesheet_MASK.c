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
typedef  int /*<<< orphan*/  all_types2 ;
typedef  int /*<<< orphan*/  all_types ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IHTMLStyleSheet ;
typedef  int /*<<< orphan*/  IHTMLStyleElement ;
typedef  int /*<<< orphan*/  IHTMLElement ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
#define  ET_BODY 133 
#define  ET_DIV 132 
#define  ET_HEAD 131 
#define  ET_HTML 130 
#define  ET_STYLE 129 
#define  ET_TITLE 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IHTMLStyleElement ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  const,int,int /*<<< orphan*/ **) ; 

__attribute__((used)) static void FUNC11(IHTMLDocument2 *doc)
{
    IHTMLStyleSheet *stylesheet, *stylesheet2;
    IHTMLStyleElement *style_elem;
    IHTMLElement *doc_elem, *elem;
    HRESULT hres;

    static const elem_type_t all_types[] = {
        ET_HTML,
        ET_HEAD,
        ET_TITLE,
        ET_BODY,
        ET_DIV
    };

    static const elem_type_t all_types2[] = {
        ET_HTML,
        ET_HEAD,
        ET_TITLE,
        ET_STYLE,
        ET_BODY,
        ET_DIV
    };

    FUNC9(doc, all_types, sizeof(all_types)/sizeof(*all_types));

    hres = FUNC0(doc, NULL, -1, &stylesheet);
    FUNC8(hres == S_OK, "createStyleSheet failed: %08x\n", hres);

    FUNC9(doc, all_types2, sizeof(all_types2)/sizeof(*all_types2));

    doc_elem = FUNC6(doc);

    FUNC10((IUnknown*)doc_elem, ET_STYLE, 1, &elem);
    FUNC2(doc_elem);

    hres = FUNC1(elem, &IID_IHTMLStyleElement, (void**)&style_elem);
    FUNC2(elem);
    FUNC8(hres == S_OK, "Could not get IHTMLStyleElement iface: %08x\n", hres);

    stylesheet2 = NULL;
    hres = FUNC4(style_elem, &stylesheet2);
    FUNC8(hres == S_OK, "get_styleSheet failed: %08x\n", hres);
    FUNC8(stylesheet2 != NULL, "stylesheet2 == NULL\n");
    FUNC8(FUNC7((IUnknown*)stylesheet, (IUnknown*)stylesheet2), "stylesheet != stylesheet2\n");

    FUNC5(stylesheet2);
    FUNC5(stylesheet);

    FUNC3(style_elem);
}