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
typedef  int /*<<< orphan*/  IHTMLStyle6 ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC10(IHTMLStyle6 *style)
{
    BSTR str;
    HRESULT hres;

    str = (void*)0xdeadbeef;
    hres = FUNC1(style, &str);
    FUNC6(hres == S_OK, "get_outline failed: %08x\n", hres);
    FUNC6(str && !*str, "outline = %s\n", FUNC8(str));
    FUNC4(str);

    str = FUNC5("1px");
    hres = FUNC3(style, str);
    FUNC6(hres == S_OK, "put_outline failed: %08x\n", hres);
    FUNC4(str);

    str = (void*)0xdeadbeef;
    hres = FUNC1(style, &str);
    FUNC6(hres == S_OK, "get_outline failed: %08x\n", hres);
    FUNC6(FUNC9(str, "1px"), "outline = %s\n", FUNC8(str));
    FUNC4(str);

    str = (void*)0xdeadbeef;
    hres = FUNC0(style, &str);
    FUNC6(hres == S_OK, "get_boxSizing failed: %08x\n", hres);
    FUNC6(!str, "boxSizing = %s\n", FUNC8(str));
    FUNC4(str);

    str = FUNC5("border-box");
    hres = FUNC2(style, str);
    FUNC6(hres == S_OK, "put_boxSizing failed: %08x\n", hres);
    FUNC4(str);

    str = NULL;
    hres = FUNC0(style, &str);
    FUNC6(hres == S_OK, "get_boxSizing failed: %08x\n", hres);
    FUNC6(!FUNC7(str, "border-box"), "boxSizing = %s\n", FUNC8(str));
    FUNC4(str);
}