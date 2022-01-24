#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ ip_object; int /*<<< orphan*/  hwnd; int /*<<< orphan*/  IOleClientSite_iface; int /*<<< orphan*/  plugin_unk; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  TYPE_1__ PluginHost ;
typedef  int /*<<< orphan*/  IOleObject ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  IID_IOleObject ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  OLEIVERB_INPLACEACTIVATE ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(PluginHost *host)
{
    IOleObject *ole_obj;
    RECT rect;
    HRESULT hres;

    hres = FUNC5(host->plugin_unk, &IID_IOleObject, (void**)&ole_obj);
    if(FUNC0(hres)) {
        FUNC1("Plugin does not support IOleObject\n");
        return;
    }

    FUNC9(host, &rect);
    hres = FUNC3(ole_obj, OLEIVERB_INPLACEACTIVATE, NULL, &host->IOleClientSite_iface, 0, host->hwnd, &rect);
    FUNC4(ole_obj);
    if(FUNC0(hres))
        FUNC8("DoVerb failed: %08x\n", hres);

    if(host->ip_object) {
        HWND hwnd;

        hres = FUNC2(host->ip_object, &hwnd);
        if(FUNC6(hres))
            FUNC7("hwnd %p\n", hwnd);
    }
}