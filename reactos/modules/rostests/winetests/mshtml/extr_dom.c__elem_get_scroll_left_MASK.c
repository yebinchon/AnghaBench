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
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IHTMLTextContainer ;
typedef  int /*<<< orphan*/  IHTMLElement2 ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  IID_IHTMLTextContainer ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * FUNC5 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__,...) ; 

__attribute__((used)) static void FUNC7(unsigned line, IUnknown *unk)
{
    IHTMLElement2 *elem = FUNC5(line, unk);
    IHTMLTextContainer *txtcont;
    LONG l = -1, l2 = -1;
    HRESULT hres;

    hres = FUNC1(elem, NULL);
    FUNC6(hres == E_INVALIDARG, "expect E_INVALIDARG got 0x%08x\n", hres);

    hres = FUNC1(elem, &l);
    FUNC6(hres == S_OK, "get_scrollTop failed: %08x\n", hres);
    FUNC0(elem);

    hres = FUNC4(unk, &IID_IHTMLTextContainer, (void**)&txtcont);
    FUNC6(hres == S_OK, "Could not get IHTMLTextContainer: %08x\n", hres);

    hres = FUNC3(txtcont, &l2);
    FUNC2(txtcont);
    FUNC6(hres == S_OK, "IHTMLTextContainer::get_scrollLeft failed: %d\n", l2);
    FUNC6(l == l2, "unexpected left %d, expected %d\n", l2, l);
}