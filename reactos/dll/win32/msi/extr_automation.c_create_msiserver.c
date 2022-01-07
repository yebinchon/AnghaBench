
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int IDispatch_iface; } ;
typedef int IUnknown ;
typedef scalar_t__ HRESULT ;
typedef TYPE_1__ AutomationObject ;


 scalar_t__ CLASS_E_NOAGGREGATION ;
 scalar_t__ E_OUTOFMEMORY ;
 int Installer_tid ;
 scalar_t__ S_OK ;
 int TRACE (char*,int *,void**) ;
 scalar_t__ init_automation_object (TYPE_1__*,int ,int ) ;
 TYPE_1__* msi_alloc (int) ;
 int msi_free (TYPE_1__*) ;

HRESULT create_msiserver(IUnknown *outer, void **ppObj)
{
    AutomationObject *installer;
    HRESULT hr;

    TRACE("(%p %p)\n", outer, ppObj);

    if (outer)
        return CLASS_E_NOAGGREGATION;

    installer = msi_alloc(sizeof(AutomationObject));
    if (!installer) return E_OUTOFMEMORY;

    hr = init_automation_object(installer, 0, Installer_tid);
    if (hr != S_OK)
    {
        msi_free(installer);
        return hr;
    }

    *ppObj = &installer->IDispatch_iface;

    return hr;
}
