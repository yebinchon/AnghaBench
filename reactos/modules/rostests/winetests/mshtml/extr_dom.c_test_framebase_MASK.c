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
typedef  int /*<<< orphan*/  IHTMLFrameBase ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ BSTR ;

/* Variables and functions */
 scalar_t__ E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  IID_IHTMLFrameBase ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 

__attribute__((used)) static void FUNC15(IUnknown *unk)
{
    IHTMLFrameBase *fbase;
    BSTR str;
    HRESULT hres;

    /* get/put scrolling */
    hres = FUNC5(unk, &IID_IHTMLFrameBase, (void**)&fbase);
    FUNC8(hres == S_OK, "Could not get IHTMLFrameBase interface: 0x%08x\n", hres);

    hres = FUNC2(fbase, &str);
    FUNC8(hres == S_OK, "IHTMLFrameBase_get_scrolling failed: 0x%08x\n", hres);
    FUNC8(!FUNC11(str, "auto"), "get_scrolling should have given 'auto', gave: %s\n", FUNC14(str));
    FUNC6(str);

    str = FUNC7("no");
    hres = FUNC4(fbase, str);
    FUNC8(hres == S_OK, "IHTMLFrameBase_put_scrolling failed: 0x%08x\n", hres);
    FUNC6(str);

    hres = FUNC2(fbase, &str);
    FUNC8(hres == S_OK, "IHTMLFrameBase_get_scrolling failed: 0x%08x\n", hres);
    FUNC8(!FUNC11(str, "no"), "get_scrolling should have given 'no', gave: %s\n", FUNC14(str));
    FUNC6(str);

    str = FUNC7("junk");
    hres = FUNC4(fbase, str);
    FUNC8(hres == E_INVALIDARG, "IHTMLFrameBase_put_scrolling should have failed "
            "with E_INVALIDARG, instead: 0x%08x\n", hres);
    FUNC6(str);

    hres = FUNC2(fbase, &str);
    FUNC8(hres == S_OK, "IHTMLFrameBase_get_scrolling failed: 0x%08x\n", hres);
    FUNC8(!FUNC11(str, "no"), "get_scrolling should have given 'no', gave: %s\n", FUNC14(str));
    FUNC6(str);

    hres = FUNC1(fbase, &str);
    FUNC8(hres == S_OK, "get_frameBorder failed: %08x\n", hres);
    FUNC8(!str, "frameBorder = %s\n", FUNC14(str));

    str = FUNC7("1");
    hres = FUNC3(fbase, str);
    FUNC8(hres == S_OK, "put_frameBorder failed: %08x\n", hres);
    FUNC6(str);

    hres = FUNC1(fbase, &str);
    FUNC8(hres == S_OK, "get_frameBorder failed: %08x\n", hres);
    FUNC8(!FUNC11(str, "1"), "frameBorder = %s, expected \"1\"\n", FUNC14(str));

    FUNC12(fbase, NULL);
    FUNC9(fbase, "1px");
    FUNC12(fbase, "1");

    FUNC13(fbase, NULL);
    FUNC10(fbase, "2px");
    FUNC13(fbase, "2");

    FUNC0(fbase);
}