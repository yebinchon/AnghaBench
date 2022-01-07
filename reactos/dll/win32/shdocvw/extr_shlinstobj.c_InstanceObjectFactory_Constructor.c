
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_6__ {TYPE_3__ IClassFactory_iface; int * m_pPropertyBag; int m_clsidInstance; scalar_t__ m_cRef; } ;
typedef int REFIID ;
typedef int * REFCLSID ;
typedef int LPVOID ;
typedef TYPE_1__ InstanceObjectFactory ;
typedef int IPropertyBag ;
typedef int HRESULT ;


 int E_FAIL ;
 int IClassFactory_AddRef (TYPE_3__*) ;
 int IClassFactory_QueryInterface (TYPE_3__*,int ,int *) ;
 int IClassFactory_Release (TYPE_3__*) ;
 int IPropertyBag_AddRef (int *) ;
 int InstanceObjectFactory_IClassFactoryVtbl ;
 int TRACE (char*,int *,int ,int *) ;
 int debugstr_guid (int ) ;
 TYPE_1__* heap_alloc (int) ;

__attribute__((used)) static HRESULT InstanceObjectFactory_Constructor(REFCLSID rclsid, IPropertyBag *pPropertyBag,
                                                 REFIID riid, LPVOID *ppvObject)
{
    InstanceObjectFactory *pInstanceObjectFactory;
    HRESULT hr = E_FAIL;

    TRACE("(RegistryPropertyBag=%p, riid=%s, ppvObject=%p)\n", pPropertyBag,
        debugstr_guid(riid), ppvObject);

    pInstanceObjectFactory = heap_alloc(sizeof(InstanceObjectFactory));
    if (pInstanceObjectFactory) {
        pInstanceObjectFactory->IClassFactory_iface.lpVtbl = &InstanceObjectFactory_IClassFactoryVtbl;
        pInstanceObjectFactory->m_cRef = 0;
        pInstanceObjectFactory->m_clsidInstance = *rclsid;
        pInstanceObjectFactory->m_pPropertyBag = pPropertyBag;
        IPropertyBag_AddRef(pPropertyBag);

        IClassFactory_AddRef(&pInstanceObjectFactory->IClassFactory_iface);
        hr = IClassFactory_QueryInterface(&pInstanceObjectFactory->IClassFactory_iface,
                                          riid, ppvObject);
        IClassFactory_Release(&pInstanceObjectFactory->IClassFactory_iface);
    }

    return hr;
}
