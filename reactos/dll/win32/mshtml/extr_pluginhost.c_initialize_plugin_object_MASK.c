#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  control ;
typedef  int /*<<< orphan*/  container ;
struct TYPE_11__ {int /*<<< orphan*/  plugin_unk; int /*<<< orphan*/ * disp; int /*<<< orphan*/  IAdviseSinkEx_iface; int /*<<< orphan*/  IOleClientSite_iface; int /*<<< orphan*/  IPropertyNotifySink_iface; } ;
struct TYPE_10__ {int member_0; int dwAmbientFlags; int /*<<< orphan*/ * pPropertyNotifySink; int /*<<< orphan*/ * pAdviseSink; int /*<<< orphan*/ * pClientSite; } ;
struct TYPE_9__ {int member_0; } ;
typedef  TYPE_1__ QACONTROL ;
typedef  TYPE_2__ QACONTAINER ;
typedef  TYPE_3__ PluginHost ;
typedef  int /*<<< orphan*/  IViewObjectEx ;
typedef  int /*<<< orphan*/  IQuickActivate ;
typedef  int /*<<< orphan*/  IOleObject ;
typedef  int /*<<< orphan*/  IOleCommandTarget ;
typedef  int /*<<< orphan*/  IDispatchEx ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  IClientSecurity ;
typedef  int /*<<< orphan*/  IAdviseSink ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  DVASPECT_CONTENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IClientSecurity ; 
 int /*<<< orphan*/  IID_IDispatch ; 
 int /*<<< orphan*/  IID_IDispatchEx ; 
 int /*<<< orphan*/  IID_IOleCommandTarget ; 
 int /*<<< orphan*/  IID_IOleObject ; 
 int /*<<< orphan*/  IID_IQuickActivate ; 
 int /*<<< orphan*/  IID_IViewObjectEx ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int QACONTAINER_MESSAGEREFLECT ; 
 int QACONTAINER_SUPPORTSMNEMONICS ; 
 int QACONTAINER_USERMODE ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC18(PluginHost *host)
{
    IClientSecurity *client_security;
    IQuickActivate *quick_activate;
    IOleObject *ole_obj = NULL;
    IOleCommandTarget *cmdtrg;
    IViewObjectEx *view_obj;
    IDispatchEx *dispex;
    IDispatch *disp;
    HRESULT hres;

    /* Note native calls QI on plugin for an undocumented IID and CLSID_HTMLDocument */

    /* FIXME: call FreezeEvents(TRUE) */

    hres = FUNC9(host->plugin_unk, &IID_IClientSecurity, (void**)&client_security);
    if(FUNC13(hres)) {
        FUNC1("Handle IClientSecurity\n");
        FUNC2(client_security);
        return;
    }

    hres = FUNC9(host->plugin_unk, &IID_IQuickActivate, (void**)&quick_activate);
    if(FUNC13(hres)) {
        QACONTAINER container = {sizeof(container)};
        QACONTROL control = {sizeof(control)};

        FUNC14("Using IQuickActivate\n");

        container.pClientSite = &host->IOleClientSite_iface;
        container.dwAmbientFlags = QACONTAINER_SUPPORTSMNEMONICS|QACONTAINER_MESSAGEREFLECT|QACONTAINER_USERMODE;
        container.pAdviseSink = &host->IAdviseSinkEx_iface;
        container.pPropertyNotifySink = &host->IPropertyNotifySink_iface;

        hres = FUNC7(quick_activate, &container, &control);
        FUNC8(quick_activate);
        if(FUNC0(hres))
            FUNC1("QuickActivate failed: %08x\n", hres);
    }else {
        DWORD status = 0;

        hres = FUNC9(host->plugin_unk, &IID_IOleObject, (void**)&ole_obj);
        if(FUNC13(hres)) {
            hres = FUNC4(ole_obj, DVASPECT_CONTENT, &status);
            FUNC14("GetMiscStatus returned %08x %x\n", hres, status);

            hres = FUNC6(ole_obj, &host->IOleClientSite_iface);
            FUNC5(ole_obj);
            if(FUNC0(hres)) {
                FUNC1("SetClientSite failed: %08x\n", hres);
                return;
            }
        }else {
            FUNC14("Plugin does not support IOleObject\n");
        }
    }

    FUNC16(host);

    if(ole_obj) {
        hres = FUNC9(host->plugin_unk, &IID_IViewObjectEx, (void**)&view_obj);
        if(FUNC13(hres)) {
            DWORD view_status = 0;

            hres = FUNC12(view_obj, DVASPECT_CONTENT, 0, (IAdviseSink*)&host->IAdviseSinkEx_iface);
            if(FUNC0(hres))
                FUNC15("SetAdvise failed: %08x\n", hres);

            hres = FUNC10(view_obj, &view_status);
            FUNC11(view_obj);
            FUNC14("GetViewStatus returned %08x %x\n", hres, view_status);
        }
    }

    FUNC17(host);

    /* NOTE: Native QIs for IActiveScript, an undocumented IID, IOleControl and IRunnableObject */

    hres = FUNC9(host->plugin_unk, &IID_IDispatchEx, (void**)&dispex);
    if(FUNC13(hres)) {
        FUNC1("Use IDispatchEx\n");
        host->disp = (IDispatch*)dispex;
    }else {
        hres = FUNC9(host->plugin_unk, &IID_IDispatch, (void**)&disp);
        if(FUNC13(hres))
            host->disp = disp;
        else
            FUNC14("no IDispatch iface\n");
    }

    hres = FUNC9(host->plugin_unk, &IID_IOleCommandTarget, (void**)&cmdtrg);
    if(FUNC13(hres)) {
        FUNC1("Use IOleCommandTarget\n");
        FUNC3(cmdtrg);
    }
}