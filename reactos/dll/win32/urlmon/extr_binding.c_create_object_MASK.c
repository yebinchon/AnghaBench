#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* protocol; int /*<<< orphan*/  clsid; int /*<<< orphan*/  callback; int /*<<< orphan*/  mime; } ;
struct TYPE_6__ {int /*<<< orphan*/  IInternetProtocolEx_iface; } ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  CLSID ;
typedef  TYPE_2__ Binding ;

/* Variables and functions */
 int /*<<< orphan*/  BINDSTATUS_BEGINSYNCOPERATION ; 
 int /*<<< orphan*/  BINDSTATUS_CLASSIDAVAILABLE ; 
 int /*<<< orphan*/  BINDSTATUS_ENDSYNCOPERATION ; 
 int /*<<< orphan*/  CLSID_NULL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REGDB_E_CLASSNOTREG ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(Binding *binding)
{
    LPWSTR clsid_str;
    CLSID clsid;
    HRESULT hres;

    if(!binding->mime) {
        FUNC1("MIME not available\n");
        return;
    }

    if((clsid_str = FUNC6(binding->mime, &clsid)))
        FUNC2(binding->callback, 0, 0, BINDSTATUS_CLASSIDAVAILABLE, clsid_str);

    FUNC2(binding->callback, 0, 0, BINDSTATUS_BEGINSYNCOPERATION, NULL);

    if(clsid_str) {
        hres = FUNC4(binding, &clsid, clsid_str);
        FUNC7(clsid_str);
    }else {
        FUNC1("Could not find object for MIME %s\n", FUNC5(binding->mime));
        hres = REGDB_E_CLASSNOTREG;
    }

    FUNC2(binding->callback, 0, 0, BINDSTATUS_ENDSYNCOPERATION, NULL);
    binding->clsid = CLSID_NULL;

    FUNC8(binding, hres, NULL);
    if(FUNC0(hres))
        FUNC3(&binding->protocol->IInternetProtocolEx_iface, 0);
}