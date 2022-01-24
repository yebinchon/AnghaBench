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
typedef  int LONG ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IHTMLRect ;
typedef  int /*<<< orphan*/  IHTMLElement2 ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  IID_IHTMLRect ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC10(IUnknown *unk)
{
    IHTMLRect *rect, *rect2;
    IHTMLElement2 *elem2;
    LONG l;
    HRESULT hres;

    elem2 = FUNC7(unk);
    hres = FUNC1(elem2, &rect);
    FUNC8(hres == S_OK, "getBoundingClientRect failed: %08x\n", hres);
    hres = FUNC1(elem2, &rect2);
    FUNC0(elem2);
    FUNC8(hres == S_OK, "getBoundingClientRect failed: %08x\n", hres);
    FUNC8(rect != NULL, "rect == NULL\n");
    FUNC8(rect != rect2, "rect == rect2\n");
    FUNC2(rect2);

    FUNC9((IUnknown*)rect, &IID_IHTMLRect, "[object]");

    l = 0xdeadbeef;
    hres = FUNC6(rect, &l);
    FUNC8(hres == S_OK, "get_top failed: %08x\n", hres);
    FUNC8(l != 0xdeadbeef, "l = 0xdeadbeef\n");

    l = 0xdeadbeef;
    hres = FUNC4(rect, &l);
    FUNC8(hres == S_OK, "get_left failed: %08x\n", hres);
    FUNC8(l != 0xdeadbeef, "l = 0xdeadbeef\n");

    l = 0xdeadbeef;
    hres = FUNC3(rect, &l);
    FUNC8(hres == S_OK, "get_bottom failed: %08x\n", hres);
    FUNC8(l != 0xdeadbeef, "l = 0xdeadbeef\n");

    l = 0xdeadbeef;
    hres = FUNC5(rect, &l);
    FUNC8(hres == S_OK, "get_right failed: %08x\n", hres);
    FUNC8(l != 0xdeadbeef, "l = 0xdeadbeef\n");

    FUNC2(rect);
}