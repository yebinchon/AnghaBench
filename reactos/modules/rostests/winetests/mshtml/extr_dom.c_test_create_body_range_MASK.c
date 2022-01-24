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
typedef  int /*<<< orphan*/  IHTMLTxtRange ;
typedef  int /*<<< orphan*/  IHTMLElement ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  int /*<<< orphan*/  IHTMLBodyElement ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IHTMLBodyElement ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 

__attribute__((used)) static IHTMLTxtRange *FUNC6(IHTMLDocument2 *doc)
{
    IHTMLBodyElement *body;
    IHTMLTxtRange *range;
    IHTMLElement *elem;
    HRESULT hres;

    elem = FUNC4(doc);
    hres = FUNC2(elem, &IID_IHTMLBodyElement, (void**)&body);
    FUNC5(hres == S_OK, "QueryInterface failed: %08x\n", hres);
    FUNC3(elem);

    hres = FUNC1(body, &range);
    FUNC0(body);
    FUNC5(hres == S_OK, "createTextRange failed: %08x\n", hres);

    return range;
}