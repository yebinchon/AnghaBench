#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_1__ IUnknown ;
typedef  int /*<<< orphan*/  IClassFactory ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__) ; 
 scalar_t__ CLASS_E_NOAGGREGATION ; 
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_IMimeHtmlProtocol ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ E_NOINTERFACE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IClassFactory ; 
 int /*<<< orphan*/  IID_IInternetProtocol ; 
 int /*<<< orphan*/  IID_IInternetProtocolInfo ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ S_OK ; 
 scalar_t__ binding_tests ; 
 int /*<<< orphan*/  broken_mhtml_resolver ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  outer_vtbl ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9(void)
{
    IUnknown outer = { &outer_vtbl };
    IClassFactory *class_factory;
    IUnknown *unk, *unk2;
    unsigned i;
    HRESULT hres;

    /* test class factory */
    hres = FUNC1(&CLSID_IMimeHtmlProtocol, CLSCTX_INPROC_SERVER, NULL, &IID_IUnknown, (void**)&unk);
    FUNC6(hres == S_OK, "CoGetClassObject failed: %08x\n", hres);

    hres = FUNC4(unk, &IID_IInternetProtocolInfo, (void**)&unk2);
    FUNC6(hres == E_NOINTERFACE, "IInternetProtocolInfo supported\n");

    hres = FUNC4(unk, &IID_IClassFactory, (void**)&class_factory);
    FUNC6(hres == S_OK, "Could not get IClassFactory iface: %08x\n", hres);
    FUNC5(unk);

    hres = FUNC2(class_factory, &outer, &IID_IUnknown, (void**)&unk);
    FUNC6(hres == S_OK, "CreateInstance returned: %08x\n", hres);
    hres = FUNC4(unk, &IID_IInternetProtocol, (void**)&unk2);
    FUNC6(hres == S_OK, "Could not get IInternetProtocol iface: %08x\n", hres);
    FUNC5(unk2);
    FUNC5(unk);

    hres = FUNC2(class_factory, (IUnknown*)0xdeadbeef, &IID_IInternetProtocol, (void**)&unk2);
    FUNC6(hres == CLASS_E_NOAGGREGATION, "CreateInstance returned: %08x\n", hres);

    FUNC3(class_factory);

    if(!broken_mhtml_resolver)
        FUNC8();

    for(i = 0; i < FUNC0(binding_tests); i++)
        FUNC7(binding_tests + i);
}