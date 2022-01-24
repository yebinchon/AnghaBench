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
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_TF_CategoryMgr ; 
 int /*<<< orphan*/  CLSID_TF_InputProcessorProfiles ; 
 int /*<<< orphan*/  CLSID_TF_ThreadMgr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  IID_ITfCategoryMgr ; 
 int /*<<< orphan*/  IID_ITfInputProcessorProfiles ; 
 int /*<<< orphan*/  IID_ITfThreadMgr ; 
 int KEY_READ ; 
 int KEY_WRITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_cm ; 
 int /*<<< orphan*/  g_ipp ; 
 int /*<<< orphan*/  g_tm ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static HRESULT FUNC6(void)
{
    HRESULT hr;
    HKEY hkey;

    FUNC1(NULL);

    if (FUNC3(HKEY_LOCAL_MACHINE, "Software\\Microsoft\\CTF\\TIP", 0,
                      KEY_READ|KEY_WRITE, &hkey) != ERROR_SUCCESS)
    {
        FUNC5("Not enough permission to register input processor\n");
        return E_FAIL;
    }
    FUNC2(hkey);

    hr = FUNC0 (&CLSID_TF_InputProcessorProfiles, NULL,
          CLSCTX_INPROC_SERVER, &IID_ITfInputProcessorProfiles, (void**)&g_ipp);
    if (FUNC4(hr))
        hr = FUNC0 (&CLSID_TF_CategoryMgr, NULL,
          CLSCTX_INPROC_SERVER, &IID_ITfCategoryMgr, (void**)&g_cm);
    if (FUNC4(hr))
        hr = FUNC0 (&CLSID_TF_ThreadMgr, NULL,
          CLSCTX_INPROC_SERVER, &IID_ITfThreadMgr, (void**)&g_tm);
    return hr;
}