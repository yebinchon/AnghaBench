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
struct CONFIRMSAFETY {scalar_t__ dwFlags; int /*<<< orphan*/ * pUnk; scalar_t__ clsid; } ;
struct TYPE_5__ {int safeopt; } ;
typedef  TYPE_1__ script_ctx_t ;
typedef  int /*<<< orphan*/  policy ;
typedef  int /*<<< orphan*/  cs ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IInternetHostSecurityManager ;
typedef  int /*<<< orphan*/  IClassFactoryEx ;
typedef  int /*<<< orphan*/  IClassFactory ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ GUID ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int CLSCTX_INPROC_SERVER ; 
 int CLSCTX_LOCAL_SERVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  GUID_CUSTOM_CONFIRMOBJECTSAFETY ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IClassFactory ; 
 int /*<<< orphan*/  IID_IClassFactoryEx ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,scalar_t__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int INTERFACE_USES_SECURITY_MANAGER ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  URLACTION_ACTIVEX_RUN ; 
 scalar_t__ URLPOLICY_ALLOW ; 
 scalar_t__ URLPOLICY_DISALLOW ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static IUnknown *FUNC16(script_ctx_t *ctx, const WCHAR *progid)
{
    IInternetHostSecurityManager *secmgr = NULL;
    struct CONFIRMSAFETY cs;
    IClassFactoryEx *cfex;
    IClassFactory *cf;
    DWORD policy_size;
    BYTE *bpolicy;
    IUnknown *obj;
    DWORD policy;
    GUID guid;
    HRESULT hres;

    hres = FUNC0(progid, &guid);
    if(FUNC3(hres))
        return NULL;

    FUNC12("GUID %s\n", FUNC13(&guid));

    if(ctx->safeopt & INTERFACE_USES_SECURITY_MANAGER) {
        secmgr = FUNC14(ctx);
        if(!secmgr)
            return NULL;

        policy = 0;
        hres = FUNC8(secmgr, URLACTION_ACTIVEX_RUN,
                (BYTE*)&policy, sizeof(policy), (BYTE*)&guid, sizeof(GUID), 0, 0);
        if(FUNC3(hres) || policy != URLPOLICY_ALLOW)
            return NULL;
    }

    hres = FUNC1(&guid, CLSCTX_INPROC_SERVER|CLSCTX_LOCAL_SERVER, NULL, &IID_IClassFactory, (void**)&cf);
    if(FUNC3(hres))
        return NULL;

    hres = FUNC7(cf, &IID_IClassFactoryEx, (void**)&cfex);
    if(FUNC11(hres)) {
        FUNC4("Use IClassFactoryEx\n");
        FUNC5(cfex);
    }

    hres = FUNC6(cf, NULL, &IID_IUnknown, (void**)&obj);
    if(FUNC3(hres))
        return NULL;

    if(secmgr) {
        cs.clsid = guid;
        cs.pUnk = obj;
        cs.dwFlags = 0;
        hres = FUNC9(secmgr, &GUID_CUSTOM_CONFIRMOBJECTSAFETY,
                &bpolicy, &policy_size, (BYTE*)&cs, sizeof(cs), 0);
        if(FUNC11(hres)) {
            policy = policy_size >= sizeof(DWORD) ? *(DWORD*)bpolicy : URLPOLICY_DISALLOW;
            FUNC2(bpolicy);
        }

        if(FUNC3(hres) || policy != URLPOLICY_ALLOW) {
            FUNC10(obj);
            return NULL;
        }
    }

    hres = FUNC15(ctx, obj);
    if(FUNC3(hres)) {
        FUNC10(obj);
        return NULL;
    }

    return obj;
}