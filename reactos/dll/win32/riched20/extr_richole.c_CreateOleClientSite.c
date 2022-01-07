
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int * lpVtbl; } ;
struct TYPE_9__ {int entry; TYPE_3__* reole; } ;
struct TYPE_10__ {int * lpVtbl; } ;
struct TYPE_12__ {int ref; TYPE_5__ IOleClientSite_iface; TYPE_1__ child; TYPE_2__ IOleInPlaceSite_iface; } ;
struct TYPE_11__ {int clientsites; } ;
typedef TYPE_3__ IRichEditOleImpl ;
typedef TYPE_4__ IOleClientSiteImpl ;
typedef TYPE_5__ IOleClientSite ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 TYPE_4__* heap_alloc (int) ;
 int list_add_head (int *,int *) ;
 int ocst ;
 int olestvt ;

__attribute__((used)) static HRESULT CreateOleClientSite(IRichEditOleImpl *reOle, IOleClientSite **ret)
{
    IOleClientSiteImpl *clientSite = heap_alloc(sizeof *clientSite);

    if (!clientSite)
        return E_OUTOFMEMORY;

    clientSite->IOleClientSite_iface.lpVtbl = &ocst;
    clientSite->IOleInPlaceSite_iface.lpVtbl = &olestvt;
    clientSite->ref = 1;
    clientSite->child.reole = reOle;
    list_add_head(&reOle->clientsites, &clientSite->child.entry);

    *ret = &clientSite->IOleClientSite_iface;
    return S_OK;
}
