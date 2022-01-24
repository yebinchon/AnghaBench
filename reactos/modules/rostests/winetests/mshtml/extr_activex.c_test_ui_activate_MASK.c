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
typedef  int /*<<< orphan*/  IOleInPlaceSite ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IOleInPlaceSite ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Invoke_ENABLED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  client_site ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC6(void)
{
    IOleInPlaceSite *ip_site;
    HRESULT hres;

    hres = FUNC1(client_site, &IID_IOleInPlaceSite, (void**)&ip_site);
    FUNC5(hres == S_OK, "Could not get IOleInPlaceSite iface: %08x\n", hres);

    FUNC4(Invoke_ENABLED);
    hres = FUNC2(ip_site);
    FUNC5(hres == S_OK, "OnUIActivate failed: %08x\n", hres);
    FUNC0(Invoke_ENABLED); /* Not called on IE10 */

    FUNC3(ip_site);
}