#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_6__ {int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
struct TYPE_5__ {int /*<<< orphan*/  plugin_unk; } ;
typedef  TYPE_1__ PluginHost ;
typedef  int /*<<< orphan*/  IDispatchEx ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_2__ DISPPARAMS ;

/* Variables and functions */
 int /*<<< orphan*/  DISPATCH_PROPERTYGET ; 
 int /*<<< orphan*/  DISPID_READYSTATE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IDispatch ; 
 int /*<<< orphan*/  IID_IDispatchEx ; 
 int /*<<< orphan*/  IID_NULL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(PluginHost *host)
{
    DISPPARAMS params = {NULL,NULL,0,0};
    IDispatchEx *dispex;
    IDispatch *disp;
    ULONG err = 0;
    VARIANT v;
    HRESULT hres;

    hres = FUNC5(host->plugin_unk, &IID_IDispatchEx, (void**)&dispex);
    if(FUNC6(hres)) {
        FUNC1("Use IDispatchEx\n");
        FUNC2(dispex);
    }

    hres = FUNC5(host->plugin_unk, &IID_IDispatch, (void**)&disp);
    if(FUNC0(hres))
        return;

    hres = FUNC3(disp, DISPID_READYSTATE, &IID_NULL, 0, DISPATCH_PROPERTYGET, &params, &v, NULL, &err);
    FUNC4(disp);
    if(FUNC6(hres)) {
        /* FIXME: make plugin readystate affect document readystate */
        FUNC7("readystate = %s\n", FUNC9(&v));
        FUNC8(&v);
    }
}