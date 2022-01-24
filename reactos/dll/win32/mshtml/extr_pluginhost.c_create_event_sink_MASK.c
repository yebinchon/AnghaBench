#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_13__ {int ref; int is_dispiface; int /*<<< orphan*/  cookie; TYPE_1__ IDispatch_iface; int /*<<< orphan*/ * typeinfo; int /*<<< orphan*/  iid; TYPE_3__* host; } ;
struct TYPE_12__ {int /*<<< orphan*/  plugin_unk; } ;
struct TYPE_11__ {scalar_t__ typekind; int /*<<< orphan*/  guid; } ;
typedef  scalar_t__ TYPEKIND ;
typedef  TYPE_2__ TYPEATTR ;
typedef  TYPE_3__ PluginHost ;
typedef  TYPE_4__ PHEventSink ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  ITypeInfo ;
typedef  int /*<<< orphan*/  IConnectionPointContainer ;
typedef  int /*<<< orphan*/  IConnectionPoint ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 scalar_t__ E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IConnectionPointContainer ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  PHCPDispatchVtbl ; 
 scalar_t__ TKIND_DISPATCH ; 
 scalar_t__ TKIND_INTERFACE ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC12 (int) ; 

__attribute__((used)) static PHEventSink *FUNC13(PluginHost *plugin_host, ITypeInfo *typeinfo)
{
    IConnectionPointContainer *cp_container;
    PHEventSink *ret;
    IConnectionPoint *cp;
    TYPEATTR *typeattr;
    TYPEKIND typekind;
    GUID guid;
    HRESULT hres;

    hres = FUNC6(typeinfo, &typeattr);
    if(FUNC0(hres))
        return NULL;

    typekind = typeattr->typekind;
    guid = typeattr->guid;
    FUNC7(typeinfo, typeattr);

    FUNC9("guid %s typekind %d\n", FUNC11(&guid), typekind);

    if(typekind != TKIND_INTERFACE && typekind != TKIND_DISPATCH) {
        FUNC10("invalid typekind %d\n", typekind);
        return NULL;
    }

    hres = FUNC8(plugin_host->plugin_unk, &IID_IConnectionPointContainer, (void**)&cp_container);
    if(FUNC0(hres)) {
        FUNC10("Could not get IConnectionPointContainer iface: %08x\n", hres);
        return NULL;
    }

    hres = FUNC1(cp_container, &guid, &cp);
    FUNC2(cp_container);
    if(FUNC0(hres)) {
        FUNC10("Could not find %s connection point\n", FUNC11(&guid));
        return NULL;
    }

    ret = FUNC12(sizeof(*ret));
    if(ret) {
        ret->IDispatch_iface.lpVtbl = &PHCPDispatchVtbl;
        ret->ref = 1;
        ret->host = plugin_host;
        ret->iid = guid;
        ret->is_dispiface = typekind == TKIND_DISPATCH;

        FUNC5(typeinfo);
        ret->typeinfo = typeinfo;

        hres = FUNC3(cp, (IUnknown*)&ret->IDispatch_iface, &ret->cookie);
    }else {
        hres = E_OUTOFMEMORY;
    }

    FUNC4(cp);
    if(FUNC0(hres)) {
        FUNC10("Advise failed: %08x\n", hres);
        return NULL;
    }

    return ret;
}