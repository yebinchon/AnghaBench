
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {TYPE_4__ IClassFactory_iface; int pCreateInstance; int version; scalar_t__ ref; } ;
typedef int REFIID ;
typedef int HRESULT ;
typedef int GUID ;
typedef int DOMFactoryCreateInstanceFunc ;
typedef TYPE_1__ DOMFactory ;


 int DOMClassFactoryVtbl ;
 scalar_t__ FAILED (int ) ;
 int IClassFactory_QueryInterface (TYPE_4__*,int ,void**) ;
 int get_msxml_version (int const*) ;
 TYPE_1__* heap_alloc (int) ;
 int heap_free (TYPE_1__*) ;

__attribute__((used)) static HRESULT DOMClassFactory_Create(const GUID *clsid, REFIID riid, void **ppv, DOMFactoryCreateInstanceFunc fnCreateInstance)
{
    DOMFactory *ret = heap_alloc(sizeof(DOMFactory));
    HRESULT hres;

    ret->IClassFactory_iface.lpVtbl = &DOMClassFactoryVtbl;
    ret->ref = 0;
    ret->version = get_msxml_version(clsid);
    ret->pCreateInstance = fnCreateInstance;

    hres = IClassFactory_QueryInterface(&ret->IClassFactory_iface, riid, ppv);
    if(FAILED(hres)) {
        heap_free(ret);
        *ppv = ((void*)0);
    }
    return hres;
}
