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
typedef  int /*<<< orphan*/  IObjectSafety ;
typedef  int HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int E_FAIL ; 
 int E_POINTER ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  IID_IActiveScript ; 
 int /*<<< orphan*/  IID_IActiveScriptParse ; 
 int /*<<< orphan*/  IID_IObjectSafety ; 
 int /*<<< orphan*/  IID_NULL ; 
 int INTERFACESAFE_FOR_UNTRUSTED_CALLER ; 
 int INTERFACESAFE_FOR_UNTRUSTED_DATA ; 
 int INTERFACE_USES_DISPEX ; 
 int INTERFACE_USES_SECURITY_MANAGER ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 

__attribute__((used)) static void FUNC6(IUnknown *unk)
{
    IObjectSafety *safety;
    DWORD supported, enabled;
    HRESULT hres;

    hres = FUNC4(unk, &IID_IObjectSafety, (void**)&safety);
    FUNC5(hres == S_OK, "Could not get IObjectSafety: %08x\n", hres);
    if(FUNC0(hres))
        return;

    hres = FUNC1(safety, &IID_NULL, &supported, NULL);
    FUNC5(hres == E_POINTER, "GetInterfaceSafetyOptions failed: %08x, expected E_POINTER\n", hres);
    hres = FUNC1(safety, &IID_NULL, NULL, &enabled);
    FUNC5(hres == E_POINTER, "GetInterfaceSafetyOptions failed: %08x, expected E_POINTER\n", hres);

    supported = enabled = 0xdeadbeef;
    hres = FUNC1(safety, &IID_NULL, &supported, &enabled);
    FUNC5(hres == S_OK, "GetInterfaceSafetyOptions failed: %08x\n", hres);
    FUNC5(supported == (INTERFACESAFE_FOR_UNTRUSTED_DATA|INTERFACE_USES_DISPEX|INTERFACE_USES_SECURITY_MANAGER),
       "supported=%x\n", supported);
    FUNC5(enabled == INTERFACE_USES_DISPEX, "enabled=%x\n", enabled);

    supported = enabled = 0xdeadbeef;
    hres = FUNC1(safety, &IID_IActiveScript, &supported, &enabled);
    FUNC5(hres == S_OK, "GetInterfaceSafetyOptions failed: %08x\n", hres);
    FUNC5(supported == (INTERFACESAFE_FOR_UNTRUSTED_DATA|INTERFACE_USES_DISPEX|INTERFACE_USES_SECURITY_MANAGER),
       "supported=%x\n", supported);
    FUNC5(enabled == INTERFACE_USES_DISPEX, "enabled=%x\n", enabled);

    supported = enabled = 0xdeadbeef;
    hres = FUNC1(safety, &IID_IActiveScriptParse, &supported, &enabled);
    FUNC5(hres == S_OK, "GetInterfaceSafetyOptions failed: %08x\n", hres);
    FUNC5(supported == (INTERFACESAFE_FOR_UNTRUSTED_DATA|INTERFACE_USES_DISPEX|INTERFACE_USES_SECURITY_MANAGER),
       "supported=%x\n", supported);
    FUNC5(enabled == INTERFACE_USES_DISPEX, "enabled=%x\n", enabled);

    hres = FUNC3(safety, &IID_IActiveScriptParse,
            INTERFACESAFE_FOR_UNTRUSTED_DATA|INTERFACE_USES_DISPEX|INTERFACE_USES_SECURITY_MANAGER
                |INTERFACESAFE_FOR_UNTRUSTED_CALLER,
            INTERFACESAFE_FOR_UNTRUSTED_DATA|INTERFACE_USES_DISPEX|INTERFACE_USES_SECURITY_MANAGER);
    FUNC5(hres == E_FAIL, "SetInterfaceSafetyOptions failed: %08x, expected E_FAIL\n", hres);

    hres = FUNC3(safety, &IID_IActiveScriptParse,
            INTERFACESAFE_FOR_UNTRUSTED_DATA|INTERFACE_USES_DISPEX|INTERFACE_USES_SECURITY_MANAGER,
            INTERFACESAFE_FOR_UNTRUSTED_DATA|INTERFACE_USES_DISPEX|INTERFACE_USES_SECURITY_MANAGER);
    FUNC5(hres == S_OK, "SetInterfaceSafetyOptions failed: %08x\n", hres);

    supported = enabled = 0xdeadbeef;
    hres = FUNC1(safety, &IID_IActiveScriptParse, &supported, &enabled);
    FUNC5(hres == S_OK, "GetInterfaceSafetyOptions failed: %08x\n", hres);
    FUNC5(supported == (INTERFACESAFE_FOR_UNTRUSTED_DATA|INTERFACE_USES_DISPEX|INTERFACE_USES_SECURITY_MANAGER),
       "supported=%x\n", supported);
    FUNC5(enabled == (INTERFACESAFE_FOR_UNTRUSTED_DATA|INTERFACE_USES_DISPEX|INTERFACE_USES_SECURITY_MANAGER),
       "enabled=%x\n", enabled);

    hres = FUNC3(safety, &IID_IActiveScriptParse, INTERFACESAFE_FOR_UNTRUSTED_DATA, 0);
    FUNC5(hres == S_OK, "SetInterfaceSafetyOptions failed: %08x\n", hres);

    supported = enabled = 0xdeadbeef;
    hres = FUNC1(safety, &IID_IActiveScriptParse, &supported, &enabled);
    FUNC5(hres == S_OK, "GetInterfaceSafetyOptions failed: %08x\n", hres);
    FUNC5(supported == (INTERFACESAFE_FOR_UNTRUSTED_DATA|INTERFACE_USES_DISPEX|INTERFACE_USES_SECURITY_MANAGER),
       "supported=%x\n", supported);
    FUNC5(enabled == (INTERFACE_USES_DISPEX|INTERFACE_USES_SECURITY_MANAGER), "enabled=%x\n", enabled);

    hres = FUNC3(safety, &IID_IActiveScriptParse,
            INTERFACESAFE_FOR_UNTRUSTED_DATA|INTERFACE_USES_DISPEX|INTERFACE_USES_SECURITY_MANAGER, 0);
    FUNC5(hres == S_OK, "SetInterfaceSafetyOptions failed: %08x\n", hres);

    supported = enabled = 0xdeadbeef;
    hres = FUNC1(safety, &IID_IActiveScriptParse, &supported, &enabled);
    FUNC5(hres == S_OK, "GetInterfaceSafetyOptions failed: %08x\n", hres);
    FUNC5(supported == (INTERFACESAFE_FOR_UNTRUSTED_DATA|INTERFACE_USES_DISPEX|INTERFACE_USES_SECURITY_MANAGER),
       "supported=%x\n", supported);
    FUNC5(enabled == INTERFACE_USES_DISPEX, "enabled=%x\n", enabled);

    hres = FUNC3(safety, &IID_IActiveScriptParse,
            INTERFACE_USES_DISPEX, 0);
    FUNC5(hres == S_OK, "SetInterfaceSafetyOptions failed: %08x\n", hres);

    supported = enabled = 0xdeadbeef;
    hres = FUNC1(safety, &IID_IActiveScriptParse, &supported, &enabled);
    FUNC5(hres == S_OK, "GetInterfaceSafetyOptions failed: %08x\n", hres);
    FUNC5(supported == (INTERFACESAFE_FOR_UNTRUSTED_DATA|INTERFACE_USES_DISPEX|INTERFACE_USES_SECURITY_MANAGER),
       "supported=%x\n", supported);
    FUNC5(enabled == INTERFACE_USES_DISPEX, "enabled=%x\n", enabled);

    FUNC2(safety);
}