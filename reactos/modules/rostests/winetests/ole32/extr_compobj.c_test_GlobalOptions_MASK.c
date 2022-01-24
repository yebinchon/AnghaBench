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
typedef  int /*<<< orphan*/  IGlobalOptions ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_GlobalOptions ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ E_NOINTERFACE ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IGlobalOptions ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    IGlobalOptions *global_options;
    HRESULT hres;

    FUNC1(NULL);

    hres = FUNC0(&CLSID_GlobalOptions, NULL, CLSCTX_INPROC_SERVER,
            &IID_IGlobalOptions, (void**)&global_options);
    FUNC6(hres == S_OK || FUNC5(hres == E_NOINTERFACE), "CoCreateInstance(CLSID_GlobalOptions) failed: %08x\n", hres);
    if(FUNC3(hres))
    {
        FUNC7("CLSID_GlobalOptions not available\n");
        FUNC2();
        return;
    }

    FUNC4(global_options);

    hres = FUNC0(&CLSID_GlobalOptions, (IUnknown*)0xdeadbeef, CLSCTX_INPROC_SERVER,
            &IID_IGlobalOptions, (void**)&global_options);
    FUNC6(hres == E_INVALIDARG, "CoCreateInstance(CLSID_GlobalOptions) failed: %08x\n", hres);

    FUNC2();
}