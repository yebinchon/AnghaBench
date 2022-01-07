
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int * lpVtbl; } ;
struct TYPE_13__ {int ref; int is_dispiface; int cookie; TYPE_1__ IDispatch_iface; int * typeinfo; int iid; TYPE_3__* host; } ;
struct TYPE_12__ {int plugin_unk; } ;
struct TYPE_11__ {scalar_t__ typekind; int guid; } ;
typedef scalar_t__ TYPEKIND ;
typedef TYPE_2__ TYPEATTR ;
typedef TYPE_3__ PluginHost ;
typedef TYPE_4__ PHEventSink ;
typedef int IUnknown ;
typedef int ITypeInfo ;
typedef int IConnectionPointContainer ;
typedef int IConnectionPoint ;
typedef scalar_t__ HRESULT ;
typedef int GUID ;


 scalar_t__ E_OUTOFMEMORY ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ IConnectionPointContainer_FindConnectionPoint (int *,int *,int **) ;
 int IConnectionPointContainer_Release (int *) ;
 scalar_t__ IConnectionPoint_Advise (int *,int *,int *) ;
 int IConnectionPoint_Release (int *) ;
 int IID_IConnectionPointContainer ;
 int ITypeInfo_AddRef (int *) ;
 scalar_t__ ITypeInfo_GetTypeAttr (int *,TYPE_2__**) ;
 int ITypeInfo_ReleaseTypeAttr (int *,TYPE_2__*) ;
 scalar_t__ IUnknown_QueryInterface (int ,int *,void**) ;
 int PHCPDispatchVtbl ;
 scalar_t__ TKIND_DISPATCH ;
 scalar_t__ TKIND_INTERFACE ;
 int TRACE (char*,scalar_t__,scalar_t__) ;
 int WARN (char*,scalar_t__) ;
 scalar_t__ debugstr_guid (int *) ;
 TYPE_4__* heap_alloc_zero (int) ;

__attribute__((used)) static PHEventSink *create_event_sink(PluginHost *plugin_host, ITypeInfo *typeinfo)
{
    IConnectionPointContainer *cp_container;
    PHEventSink *ret;
    IConnectionPoint *cp;
    TYPEATTR *typeattr;
    TYPEKIND typekind;
    GUID guid;
    HRESULT hres;

    hres = ITypeInfo_GetTypeAttr(typeinfo, &typeattr);
    if(FAILED(hres))
        return ((void*)0);

    typekind = typeattr->typekind;
    guid = typeattr->guid;
    ITypeInfo_ReleaseTypeAttr(typeinfo, typeattr);

    TRACE("guid %s typekind %d\n", debugstr_guid(&guid), typekind);

    if(typekind != TKIND_INTERFACE && typekind != TKIND_DISPATCH) {
        WARN("invalid typekind %d\n", typekind);
        return ((void*)0);
    }

    hres = IUnknown_QueryInterface(plugin_host->plugin_unk, &IID_IConnectionPointContainer, (void**)&cp_container);
    if(FAILED(hres)) {
        WARN("Could not get IConnectionPointContainer iface: %08x\n", hres);
        return ((void*)0);
    }

    hres = IConnectionPointContainer_FindConnectionPoint(cp_container, &guid, &cp);
    IConnectionPointContainer_Release(cp_container);
    if(FAILED(hres)) {
        WARN("Could not find %s connection point\n", debugstr_guid(&guid));
        return ((void*)0);
    }

    ret = heap_alloc_zero(sizeof(*ret));
    if(ret) {
        ret->IDispatch_iface.lpVtbl = &PHCPDispatchVtbl;
        ret->ref = 1;
        ret->host = plugin_host;
        ret->iid = guid;
        ret->is_dispiface = typekind == TKIND_DISPATCH;

        ITypeInfo_AddRef(typeinfo);
        ret->typeinfo = typeinfo;

        hres = IConnectionPoint_Advise(cp, (IUnknown*)&ret->IDispatch_iface, &ret->cookie);
    }else {
        hres = E_OUTOFMEMORY;
    }

    IConnectionPoint_Release(cp);
    if(FAILED(hres)) {
        WARN("Advise failed: %08x\n", hres);
        return ((void*)0);
    }

    return ret;
}
