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
typedef  int /*<<< orphan*/  const elem_type_t ;
typedef  int /*<<< orphan*/  body_all_types ;
typedef  int /*<<< orphan*/  all_types ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IHTMLElementCollection ;
typedef  int /*<<< orphan*/  IHTMLElement ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
#define  ET_BODY 133 
#define  ET_DIV 132 
#define  ET_HEAD 131 
#define  ET_HTML 130 
#define  ET_NOSCRIPT 129 
#define  ET_TITLE 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC8(IHTMLDocument2 *doc)
{
    IHTMLElementCollection *col;
    IHTMLElement *body;
    HRESULT hres;

    static const elem_type_t all_types[] = {
        ET_HTML,
        ET_HEAD,
        ET_TITLE,
        ET_NOSCRIPT,
        ET_BODY,
        ET_NOSCRIPT
    };

    static const elem_type_t body_all_types[] = {
        ET_DIV,
        ET_NOSCRIPT
    };

    hres = FUNC0(doc, &col);
    FUNC4(hres == S_OK, "get_all failed: %08x\n", hres);
    FUNC6((IUnknown*)col, all_types, sizeof(all_types)/sizeof(all_types[0]));
    FUNC1(col);

    body = FUNC3(doc);
    FUNC7((IUnknown*)body, "<div>test</div><noscript><a href=\"about:blank\">A</a></noscript>");
    FUNC5((IUnknown*)body, body_all_types, sizeof(body_all_types)/sizeof(*body_all_types));
    FUNC2(body);
}