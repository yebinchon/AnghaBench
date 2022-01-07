
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {TYPE_4__ IClassFactory_iface; int fnCreateInstance; scalar_t__ ref; } ;
typedef int REFIID ;
typedef int HRESULT ;
typedef int CreateInstanceFunc ;
typedef TYPE_1__ ClassFactory ;


 scalar_t__ FAILED (int ) ;
 int HTMLClassFactoryVtbl ;
 int IClassFactory_QueryInterface (TYPE_4__*,int ,void**) ;
 TYPE_1__* heap_alloc (int) ;
 int heap_free (TYPE_1__*) ;

__attribute__((used)) static HRESULT ClassFactory_Create(REFIID riid, void **ppv, CreateInstanceFunc fnCreateInstance)
{
    ClassFactory *ret = heap_alloc(sizeof(ClassFactory));
    HRESULT hres;

    ret->IClassFactory_iface.lpVtbl = &HTMLClassFactoryVtbl;
    ret->ref = 0;
    ret->fnCreateInstance = fnCreateInstance;

    hres = IClassFactory_QueryInterface(&ret->IClassFactory_iface, riid, ppv);
    if(FAILED(hres)) {
        heap_free(ret);
        *ppv = ((void*)0);
    }
    return hres;
}
