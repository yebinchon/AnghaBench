
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int IDispatch_iface; } ;
typedef int MSIHANDLE ;
typedef int IDispatch ;
typedef scalar_t__ HRESULT ;
typedef TYPE_1__ AutomationObject ;


 scalar_t__ E_OUTOFMEMORY ;
 scalar_t__ S_OK ;
 int TRACE (char*,int ,int **) ;
 int View_tid ;
 scalar_t__ init_automation_object (TYPE_1__*,int ,int ) ;
 TYPE_1__* msi_alloc (int) ;
 int msi_free (TYPE_1__*) ;

__attribute__((used)) static HRESULT create_view(MSIHANDLE msiHandle, IDispatch **dispatch)
{
    AutomationObject *view;
    HRESULT hr;

    TRACE("(%d %p)\n", msiHandle, dispatch);

    view = msi_alloc(sizeof(AutomationObject));
    if (!view) return E_OUTOFMEMORY;

    hr = init_automation_object(view, msiHandle, View_tid);
    if (hr != S_OK)
    {
        msi_free(view);
        return hr;
    }

    *dispatch = &view->IDispatch_iface;

    return hr;
}
