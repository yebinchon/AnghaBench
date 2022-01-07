
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_19__ {int * lpVtbl; } ;
struct TYPE_17__ {int * lpVtbl; } ;
struct TYPE_16__ {int * lpVtbl; } ;
struct TYPE_15__ {int * lpVtbl; } ;
struct TYPE_14__ {int * lpVtbl; } ;
struct TYPE_13__ {int * lpVtbl; } ;
struct TYPE_12__ {int * lpVtbl; } ;
struct TYPE_18__ {int ref; TYPE_8__ nsIWebBrowserChrome_iface; int * doc; TYPE_6__ nsISupportsWeakReference_iface; TYPE_5__ nsIInterfaceRequestor_iface; TYPE_4__ nsITooltipListener_iface; TYPE_3__ nsIEmbeddingSiteWindow_iface; TYPE_2__ nsIURIContentListener_iface; TYPE_1__ nsIContextMenuListener_iface; } ;
typedef TYPE_7__ NSContainer ;
typedef int HTMLDocumentObj ;
typedef int HRESULT ;


 int CLASS_E_CLASSNOTAVAILABLE ;
 int E_OUTOFMEMORY ;
 scalar_t__ SUCCEEDED (int ) ;
 TYPE_7__* heap_alloc_zero (int) ;
 int init_nscontainer (TYPE_7__*) ;
 int load_gecko () ;
 int nsContextMenuListenerVtbl ;
 int nsEmbeddingSiteWindowVtbl ;
 int nsIWebBrowserChrome_Release (TYPE_8__*) ;
 int nsInterfaceRequestorVtbl ;
 int nsSupportsWeakReferenceVtbl ;
 int nsTooltipListenerVtbl ;
 int nsURIContentListenerVtbl ;
 int nsWebBrowserChromeVtbl ;

HRESULT create_nscontainer(HTMLDocumentObj *doc, NSContainer **_ret)
{
    NSContainer *ret;
    HRESULT hres;

    if(!load_gecko())
        return CLASS_E_CLASSNOTAVAILABLE;

    ret = heap_alloc_zero(sizeof(NSContainer));
    if(!ret)
        return E_OUTOFMEMORY;

    ret->nsIWebBrowserChrome_iface.lpVtbl = &nsWebBrowserChromeVtbl;
    ret->nsIContextMenuListener_iface.lpVtbl = &nsContextMenuListenerVtbl;
    ret->nsIURIContentListener_iface.lpVtbl = &nsURIContentListenerVtbl;
    ret->nsIEmbeddingSiteWindow_iface.lpVtbl = &nsEmbeddingSiteWindowVtbl;
    ret->nsITooltipListener_iface.lpVtbl = &nsTooltipListenerVtbl;
    ret->nsIInterfaceRequestor_iface.lpVtbl = &nsInterfaceRequestorVtbl;
    ret->nsISupportsWeakReference_iface.lpVtbl = &nsSupportsWeakReferenceVtbl;

    ret->doc = doc;
    ret->ref = 1;

    hres = init_nscontainer(ret);
    if(SUCCEEDED(hres))
        *_ret = ret;
    else
        nsIWebBrowserChrome_Release(&ret->nsIWebBrowserChrome_iface);
    return hres;
}
