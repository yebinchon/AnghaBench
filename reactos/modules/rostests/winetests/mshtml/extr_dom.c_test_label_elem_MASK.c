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
typedef  int /*<<< orphan*/  IHTMLLabelElement ;
typedef  int /*<<< orphan*/  IHTMLElement ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(IHTMLElement *elem)
{
    IHTMLLabelElement *label;
    BSTR str;
    HRESULT hres;

    label = FUNC5((IUnknown*)elem);

    str = NULL;
    hres = FUNC1(label, &str);
    FUNC6(hres == S_OK, "get_htmlFor failed: %08x\n", hres);
    FUNC6(!FUNC7(str, "in"), "htmlFor = %s\n", FUNC8(str));
    FUNC3(str);

    str = FUNC4("");
    hres = FUNC2(label, str);
    FUNC6(hres == S_OK, "put_htmlFor failed: %08x\n", hres);
    FUNC3(str);

    str = (void*)0xdeadbeef;
    hres = FUNC1(label, &str);
    FUNC6(hres == S_OK, "get_htmlFor failed: %08x\n", hres);
    FUNC6(!FUNC7(str, ""), "htmlFor = %s\n", FUNC8(str));

    str = FUNC4("abc");
    hres = FUNC2(label, str);
    FUNC6(hres == S_OK, "put_htmlFor failed: %08x\n", hres);
    FUNC3(str);

    str = NULL;
    hres = FUNC1(label, &str);
    FUNC6(hres == S_OK, "get_htmlFor failed: %08x\n", hres);
    FUNC6(!FUNC7(str, "abc"), "htmlFor = %s\n", FUNC8(str));
    FUNC3(str);

    FUNC0(label);
}