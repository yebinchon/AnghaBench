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
typedef  int /*<<< orphan*/  CLSID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CLASS_E_NOAGGREGATION ; 
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IClassFactory ; 
 int /*<<< orphan*/  IID_IInternetProtocol ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  outer_QI_test ; 
 int /*<<< orphan*/  outer_test_iid ; 
 int /*<<< orphan*/  outer_vtbl ; 

__attribute__((used)) static void FUNC8(const CLSID *clsid)
{
    IUnknown outer = { &outer_vtbl };
    IClassFactory *class_factory;
    IUnknown *unk, *unk2, *unk3;
    HRESULT hres;

    hres = FUNC1(clsid, CLSCTX_INPROC_SERVER, NULL, &IID_IClassFactory, (void**)&class_factory);
    FUNC7(hres == S_OK, "CoGetClassObject failed: %08x\n", hres);

    hres = FUNC2(class_factory, &outer, &IID_IUnknown, (void**)&unk);
    FUNC7(hres == S_OK, "CreateInstance returned: %08x\n", hres);

    hres = FUNC4(unk, &IID_IInternetProtocol, (void**)&unk2);
    FUNC7(hres == S_OK, "Could not get IInternetProtocol iface: %08x\n", hres);

    FUNC6(outer_QI_test);
    hres = FUNC4(unk2, &outer_test_iid, (void**)&unk3);
    FUNC0(outer_QI_test);
    FUNC7(hres == S_OK, "Could not get IInternetProtocol iface: %08x\n", hres);
    FUNC7(unk3 == (IUnknown*)0xdeadbeef, "unexpected unk2\n");

    FUNC5(unk2);
    FUNC5(unk);

    unk = (void*)0xdeadbeef;
    hres = FUNC2(class_factory, &outer, &IID_IInternetProtocol, (void**)&unk);
    FUNC7(hres == CLASS_E_NOAGGREGATION, "CreateInstance returned: %08x\n", hres);
    FUNC7(!unk, "unk = %p\n", unk);

    FUNC3(class_factory);
}