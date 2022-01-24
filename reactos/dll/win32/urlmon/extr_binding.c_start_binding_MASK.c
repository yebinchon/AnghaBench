#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  IInternetProtocolEx_iface; } ;
struct TYPE_9__ {scalar_t__ download_state; int bindf; int state; int /*<<< orphan*/  notif_hwnd; int /*<<< orphan*/  IBinding_iface; int /*<<< orphan*/  IInternetBindInfo_iface; int /*<<< orphan*/  IInternetProtocolSink_iface; TYPE_5__* protocol; scalar_t__ redirect_url; int /*<<< orphan*/  callback; } ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/  MSG ;
typedef  int /*<<< orphan*/  IUri ;
typedef  int /*<<< orphan*/  IMoniker ;
typedef  int /*<<< orphan*/  IBindCtx ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_1__ Binding ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int BINDF_ASYNCHRONOUS ; 
 int BINDING_STOPPED ; 
 int /*<<< orphan*/  BINDSTATUS_REDIRECTING ; 
 int BSCF_FIRSTDATANOTIFICATION ; 
 int BSCF_LASTDATANOTIFICATION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ END_DOWNLOAD ; 
 scalar_t__ E_ABORT ; 
 scalar_t__ E_NOTIMPL ; 
 scalar_t__ E_PENDING ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ INET_E_DOWNLOAD_FAILURE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int PI_APARTMENTTHREADED ; 
 int PI_MIMEVERIFICATION ; 
 int PM_NOYIELD ; 
 int PM_REMOVE ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  QS_POSTMESSAGE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,scalar_t__) ; 
 scalar_t__ WM_USER ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC15(IMoniker *mon, Binding *binding_ctx, IUri *uri, IBindCtx *pbc,
                             BOOL to_obj, REFIID riid, Binding **ret)
{
    Binding *binding = NULL;
    HRESULT hres;
    MSG msg;

    hres = FUNC0(mon, binding_ctx, uri, pbc, to_obj, riid, &binding);
    if(FUNC2(hres))
        return hres;

    hres = FUNC4(binding->callback, 0, &binding->IBinding_iface);
    if(FUNC2(hres)) {
        FUNC11("OnStartBinding failed: %08x\n", hres);
        if(hres != E_ABORT && hres != E_NOTIMPL)
            hres = INET_E_DOWNLOAD_FAILURE;

        FUNC14(binding, hres, NULL);
        FUNC5(&binding->IBinding_iface);
        return hres;
    }

    if(binding_ctx) {
        FUNC13(binding->protocol, &binding->IInternetProtocolSink_iface,
                &binding->IInternetBindInfo_iface);
        if(binding_ctx->redirect_url)
            FUNC3(binding->callback, 0, 0, BINDSTATUS_REDIRECTING, binding_ctx->redirect_url);
        FUNC12(binding, BSCF_FIRSTDATANOTIFICATION | (binding_ctx->download_state == END_DOWNLOAD ? BSCF_LASTDATANOTIFICATION : 0),
                0, 0);
    }else {
        hres = FUNC6(&binding->protocol->IInternetProtocolEx_iface, uri,
                &binding->IInternetProtocolSink_iface, &binding->IInternetBindInfo_iface,
                PI_APARTMENTTHREADED|PI_MIMEVERIFICATION, 0);

        FUNC9("start ret %08x\n", hres);

        if(FUNC2(hres) && hres != E_PENDING) {
            FUNC14(binding, hres, NULL);
            FUNC5(&binding->IBinding_iface);

            return hres;
        }
    }

    while(!(binding->bindf & BINDF_ASYNCHRONOUS) &&
          !(binding->state & BINDING_STOPPED)) {
        FUNC7(0, NULL, FALSE, 5000, QS_POSTMESSAGE);
        while (FUNC8(&msg, binding->notif_hwnd, WM_USER, WM_USER+117, PM_REMOVE|PM_NOYIELD)) {
            FUNC10(&msg);
            FUNC1(&msg);
        }
    }

    *ret = binding;
    return S_OK;
}