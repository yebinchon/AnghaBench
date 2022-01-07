
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_6__ {TYPE_3__ IPropertyBag_iface; int m_hInitPropertyBagKey; scalar_t__ m_cRef; } ;
typedef TYPE_1__ RegistryPropertyBag ;
typedef int REFIID ;
typedef int LPVOID ;
typedef int HRESULT ;
typedef int HKEY ;


 int E_FAIL ;
 int IPropertyBag_AddRef (TYPE_3__*) ;
 int IPropertyBag_QueryInterface (TYPE_3__*,int ,int *) ;
 int IPropertyBag_Release (TYPE_3__*) ;
 int RegistryPropertyBag_IPropertyBagVtbl ;
 int TRACE (char*,int ,int ,int *) ;
 int debugstr_guid (int ) ;
 TYPE_1__* heap_alloc (int) ;

__attribute__((used)) static HRESULT RegistryPropertyBag_Constructor(HKEY hInitPropertyBagKey, REFIID riid, LPVOID *ppvObject) {
    HRESULT hr = E_FAIL;
    RegistryPropertyBag *pRegistryPropertyBag;

    TRACE("(hInitPropertyBagKey=%p, riid=%s, ppvObject=%p)\n", hInitPropertyBagKey,
        debugstr_guid(riid), ppvObject);

    pRegistryPropertyBag = heap_alloc(sizeof(RegistryPropertyBag));
    if (pRegistryPropertyBag) {
        pRegistryPropertyBag->IPropertyBag_iface.lpVtbl = &RegistryPropertyBag_IPropertyBagVtbl;
        pRegistryPropertyBag->m_cRef = 0;
        pRegistryPropertyBag->m_hInitPropertyBagKey = hInitPropertyBagKey;



        IPropertyBag_AddRef(&pRegistryPropertyBag->IPropertyBag_iface);
        hr = IPropertyBag_QueryInterface(&pRegistryPropertyBag->IPropertyBag_iface, riid, ppvObject);
        IPropertyBag_Release(&pRegistryPropertyBag->IPropertyBag_iface);
    }

    return hr;
}
