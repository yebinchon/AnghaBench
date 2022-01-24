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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  IHlink ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int CLSCTX_INPROC_HANDLER ; 
 int CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_StdHlink ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  IID_IHlink ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    IHlink *hlink;
    WCHAR *str;
    HRESULT hres;

    static const WCHAR testW[] = {'t','e','s','t',0};

    hres = FUNC0(&CLSID_StdHlink, NULL, CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER,
            &IID_IHlink, (void**)&hlink);
    FUNC6(hres == S_OK, "CoCreateInstance failed: %08x\n", hres);

    str = (void*)0xdeadbeef;
    hres = FUNC2(hlink, &str);
    FUNC6(hres == S_FALSE, "GetTargetFrameName failed: %08x\n", hres);
    FUNC6(!str, "str = %s\n", FUNC7(str));

    hres = FUNC4(hlink, testW);
    FUNC6(hres == S_OK, "SetTargetFrameName failed: %08x\n", hres);

    str = (void*)0xdeadbeef;
    hres = FUNC2(hlink, &str);
    FUNC6(hres == S_OK, "GetTargetFrameName failed: %08x\n", hres);
    FUNC6(!FUNC5(str, testW), "str = %s\n", FUNC7(str));
    FUNC1(str);

    hres = FUNC4(hlink, NULL);
    FUNC6(hres == S_OK, "SetTargetFrameName failed: %08x\n", hres);

    str = (void*)0xdeadbeef;
    hres = FUNC2(hlink, &str);
    FUNC6(hres == S_FALSE, "GetTargetFrameName failed: %08x\n", hres);
    FUNC6(!str, "str = %s\n", FUNC7(str));

    FUNC3(hlink);
}