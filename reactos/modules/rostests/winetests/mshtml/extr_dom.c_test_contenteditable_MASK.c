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
typedef  int /*<<< orphan*/  IHTMLElement3 ;
typedef  char* HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* S_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(IUnknown *unk)
{
    IHTMLElement3 *elem3 = FUNC5(unk);
    HRESULT hres;
    BSTR str, strDefault;

    hres = FUNC1(elem3, &strDefault);
    FUNC6(hres == S_OK, "get_contentEditable failed: 0x%08x\n", hres);

    str = FUNC4("true");
    hres = FUNC2(elem3, str);
    FUNC6(hres == S_OK, "put_contentEditable(%s) failed: 0x%08x\n", FUNC8(str), hres);
    FUNC3(str);
    hres = FUNC1(elem3, &str);
    FUNC6(hres == S_OK, "get_contentEditable failed: 0x%08x\n", hres);
    FUNC6(!FUNC7(str, "true"), "Got %s, expected %s\n", FUNC8(str), "true");

    /* Restore origin contentEditable */
    hres = FUNC2(elem3, strDefault);
    FUNC6(hres == S_OK, "put_contentEditable(%s) failed: 0x%08x\n", FUNC8(strDefault), hres);
    FUNC3(strDefault);

    FUNC0(elem3);
}