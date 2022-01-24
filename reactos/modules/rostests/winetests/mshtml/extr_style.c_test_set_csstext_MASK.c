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
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  IHTMLStyle ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 scalar_t__ VT_BSTR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(IHTMLStyle *style)
{
    VARIANT v;
    HRESULT hres;

    FUNC6(style, "background-color: black;");

    hres = FUNC0(style, &v);
    FUNC4(hres == S_OK, "get_backgroundColor: %08x\n", hres);
    FUNC4(FUNC2(&v) == VT_BSTR, "type failed: %d\n", FUNC2(&v));
    FUNC4(!FUNC5(FUNC1(&v), "black"), "str=%s\n", FUNC7(FUNC1(&v)));
    FUNC3(&v);
}