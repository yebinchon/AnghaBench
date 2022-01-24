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
typedef  int /*<<< orphan*/  indent_types ;
typedef  int /*<<< orphan*/  elem_type_t ;
typedef  int /*<<< orphan*/  all_types ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IHTMLTxtRange ;
typedef  int /*<<< orphan*/  IHTMLElementCollection ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CGID_MSHTML ; 
#define  ET_A 135 
#define  ET_BLOCKQUOTE 134 
#define  ET_BODY 133 
#define  ET_BR 132 
#define  ET_HEAD 131 
#define  ET_HTML 130 
#define  ET_P 129 
#define  ET_TITLE 128 
 int /*<<< orphan*/  IDM_INDENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(IHTMLDocument2 *doc)
{
    IHTMLElementCollection *col;
    IHTMLTxtRange *range;
    HRESULT hres;

    static const elem_type_t all_types[] = {
        ET_HTML,
        ET_HEAD,
        ET_TITLE,
        ET_BODY,
        ET_BR,
        ET_A,
    };

    static const elem_type_t indent_types[] = {
        ET_HTML,
        ET_HEAD,
        ET_TITLE,
        ET_BODY,
        ET_BLOCKQUOTE,
        ET_P,
        ET_BR,
        ET_A,
    };

    hres = FUNC0(doc, &col);
    FUNC3(hres == S_OK, "get_all failed: %08x\n", hres);
    FUNC5((IUnknown*)col, all_types, sizeof(all_types)/sizeof(all_types[0]));
    FUNC1(col);

    range = FUNC4(doc);
    FUNC6((IUnknown*)range, &CGID_MSHTML, IDM_INDENT, NULL, NULL);
    FUNC2(range);

    hres = FUNC0(doc, &col);
    FUNC3(hres == S_OK, "get_all failed: %08x\n", hres);
    FUNC5((IUnknown*)col, indent_types, sizeof(indent_types)/sizeof(indent_types[0]));
    FUNC1(col);
}