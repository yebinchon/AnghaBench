#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  policy ;
typedef  int /*<<< orphan*/  nsIDOMHTMLElement ;
struct TYPE_3__ {int /*<<< orphan*/  window; int /*<<< orphan*/  IInternetHostSecurityManager_iface; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IClassFactoryEx ;
typedef  int /*<<< orphan*/  IClassFactory ;
typedef  TYPE_1__ HTMLDocumentNode ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  GUID ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  CLSID ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int CLSCTX_INPROC_SERVER ; 
 int CLSCTX_LOCAL_SERVER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IClassFactory ; 
 int /*<<< orphan*/  IID_IClassFactoryEx ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ REGDB_E_CLASSNOTREG ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  URLACTION_ACTIVEX_RUN ; 
 scalar_t__ URLPOLICY_ALLOW ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static IUnknown *FUNC14(HTMLDocumentNode *doc, nsIDOMHTMLElement *nselem, CLSID *clsid)
{
    IClassFactoryEx *cfex;
    IClassFactory *cf;
    IUnknown *obj;
    DWORD policy;
    HRESULT hres;

    if(!FUNC13(nselem, clsid)) {
        FUNC10("Could not determine element CLSID\n");
        return NULL;
    }

    FUNC9("clsid %s\n", FUNC12(clsid));

    policy = 0;
    hres = FUNC7(&doc->IInternetHostSecurityManager_iface,
            URLACTION_ACTIVEX_RUN, (BYTE*)&policy, sizeof(policy), (BYTE*)clsid, sizeof(GUID), 0, 0);
    if(FUNC1(hres) || policy != URLPOLICY_ALLOW) {
        FUNC10("ProcessUrlAction returned %08x %x\n", hres, policy);
        return NULL;
    }

    hres = FUNC0(clsid, CLSCTX_INPROC_SERVER|CLSCTX_LOCAL_SERVER, NULL, &IID_IClassFactory, (void**)&cf);
    if(hres == REGDB_E_CLASSNOTREG)
        FUNC11(doc->window, nselem);
    if(FUNC1(hres))
        return NULL;

    hres = FUNC5(cf, &IID_IClassFactoryEx, (void**)&cfex);
    if(FUNC8(hres)) {
        FUNC2("Use IClassFactoryEx\n");
        FUNC3(cfex);
    }

    hres = FUNC4(cf, NULL, &IID_IUnknown, (void**)&obj);
    FUNC6(cf);
    if(FUNC1(hres))
        return NULL;

    return obj;
}