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
typedef  int /*<<< orphan*/  IInternetProtocol ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  CLSID ;

/* Variables and functions */
 int CLSCTX_INPROC_HANDLER ; 
 int CLSCTX_INPROC_SERVER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  E_ABORT ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  IID_IInternetProtocol ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC4(const CLSID *clsid)
{
    IInternetProtocol *protocol;
    HRESULT hres;

    hres = FUNC0(clsid, NULL, CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER,
            &IID_IInternetProtocol, (void**)&protocol);
    FUNC3(hres == S_OK, "CoCreateInstance failed: %08x\n", hres);

    hres = FUNC1(protocol, E_ABORT, 0);
    FUNC3(hres == S_OK, "Abort failed: %08x\n", hres);

    hres = FUNC1(protocol, E_FAIL, 0);
    FUNC3(hres == S_OK, "Abort failed: %08x\n", hres);

    FUNC2(protocol);
}