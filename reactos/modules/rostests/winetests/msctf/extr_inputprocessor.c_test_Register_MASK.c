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
typedef  float WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float const*) ; 
 int /*<<< orphan*/  CLSID_FakeService ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,float const*,int /*<<< orphan*/ ,float const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gLangid ; 
 int /*<<< orphan*/  g_ipp ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void)
{
    HRESULT hr;

    static const WCHAR szDesc[] = {'F','a','k','e',' ','W','i','n','e',' ','S','e','r','v','i','c','e',0};
    static const WCHAR szFile[] = {'F','a','k','e',' ','W','i','n','e',' ','S','e','r','v','i','c','e',' ','F','i','l','e',0};

    hr = FUNC2(g_ipp,&gLangid);
    FUNC6(FUNC5(hr),"Unable to get current language id\n");
    FUNC7("Current Language %x\n",gLangid);

    hr = FUNC4(&CLSID_FakeService);
    FUNC6(FUNC5(hr),"Unable to register COM for TextService\n");
    hr = FUNC3(g_ipp, &CLSID_FakeService);
    FUNC6(FUNC5(hr),"Unable to register text service(%x)\n",hr);
    hr = FUNC1(g_ipp, &CLSID_FakeService, gLangid,
            &CLSID_FakeService, szDesc, FUNC0(szDesc), szFile, FUNC0(szFile), 1);
    FUNC6(FUNC5(hr),"Unable to add Language Profile (%x)\n",hr);
}