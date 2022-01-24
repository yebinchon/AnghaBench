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
typedef  int /*<<< orphan*/  IInternetProtocolInfo ;
typedef  int /*<<< orphan*/  IClassFactory ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ CLASS_E_CLASSNOTAVAILABLE ; 
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_GopherProtocol ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ E_NOINTERFACE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IClassFactory ; 
 int /*<<< orphan*/  IID_IInternetProtocol ; 
 int /*<<< orphan*/  IID_IInternetProtocolInfo ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ REGDB_E_CLASSNOTREG ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  async_protocol ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12(void)
{
    IInternetProtocolInfo *protocol_info;
    IClassFactory *factory;
    IUnknown *unk;
    HRESULT hres;

    FUNC11("Testing gopher protocol...\n");

    hres = FUNC0(&CLSID_GopherProtocol, CLSCTX_INPROC_SERVER, NULL, &IID_IUnknown, (void**)&unk);
    FUNC8(hres == S_OK ||
       FUNC7(hres == REGDB_E_CLASSNOTREG || hres == CLASS_E_CLASSNOTAVAILABLE), /* Gopher protocol has been removed as of Vista */
       "CoGetClassObject failed: %08x\n", hres);
    if(FUNC1(hres))
        return;

    hres = FUNC5(unk, &IID_IInternetProtocolInfo, (void**)&protocol_info);
    FUNC8(hres == E_NOINTERFACE, "Could not get IInternetProtocolInfo interface: %08x, expected E_NOINTERFACE\n", hres);

    hres = FUNC5(unk, &IID_IClassFactory, (void**)&factory);
    FUNC8(hres == S_OK, "Could not get IClassFactory interface\n");
    FUNC6(unk);
    if(FUNC1(hres))
        return;

    hres = FUNC2(factory, NULL, &IID_IInternetProtocol,
                                        (void**)&async_protocol);
    FUNC3(factory);
    FUNC8(hres == S_OK, "Could not get IInternetProtocol: %08x\n", hres);

    FUNC10(async_protocol);

    FUNC4(async_protocol);

    FUNC9(&CLSID_GopherProtocol);
}