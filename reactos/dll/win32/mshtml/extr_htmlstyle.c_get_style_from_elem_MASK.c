#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ nsresult ;
typedef  int /*<<< orphan*/  nsIDOMElementCSSInlineStyle ;
typedef  int /*<<< orphan*/  nsIDOMCSSStyleDeclaration ;
struct TYPE_3__ {int /*<<< orphan*/  nselem; } ;
typedef  TYPE_1__ HTMLElement ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_NOTIMPL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  IID_nsIDOMElementCSSInlineStyle ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ NS_OK ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 

__attribute__((used)) static HRESULT FUNC7(HTMLElement *elem, nsIDOMCSSStyleDeclaration **ret)
{
    nsIDOMElementCSSInlineStyle *nselemstyle;
    nsresult nsres;

    if(!elem->nselem) {
        FUNC1("NULL nselem\n");
        return E_NOTIMPL;
    }

    nsres = FUNC6(elem->nselem, &IID_nsIDOMElementCSSInlineStyle,
            (void**)&nselemstyle);
    FUNC3(nsres == NS_OK);

    nsres = FUNC4(nselemstyle, ret);
    FUNC5(nselemstyle);
    if(FUNC2(nsres)) {
        FUNC0("GetStyle failed: %08x\n", nsres);
        return E_FAIL;
    }

    return S_OK;
}