
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_8__ {int refs; TYPE_2__ IWidget_iface; int * pDispatchUnknown; } ;
typedef TYPE_1__ Widget ;
typedef TYPE_2__ IWidget ;
typedef int IUnknown ;
typedef int ITypeInfo ;
typedef int HRESULT ;


 int CreateStdDispatch (int *,TYPE_1__*,int *,int **) ;
 int E_FAIL ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int IID_IWidget ;
 int ITypeInfo_Release (int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 int Widget_VTable ;
 int * get_type_info (int *) ;
 int ok_ole_success (int ,int (*) (int *,TYPE_1__*,int *,int **)) ;

__attribute__((used)) static IWidget *Widget_Create(void)
{
    Widget *This;
    ITypeInfo *pTypeInfo;
    HRESULT hr = E_FAIL;

    pTypeInfo = get_type_info(&IID_IWidget);
    if(!pTypeInfo)
        return ((void*)0);

    This = HeapAlloc(GetProcessHeap(), 0, sizeof(*This));
    This->IWidget_iface.lpVtbl = &Widget_VTable;
    This->refs = 1;
    This->pDispatchUnknown = ((void*)0);

    hr = CreateStdDispatch((IUnknown *)&This->IWidget_iface, This, pTypeInfo,
                           &This->pDispatchUnknown);
    ok_ole_success(hr, CreateStdDispatch);
    ITypeInfo_Release(pTypeInfo);

    if (SUCCEEDED(hr))
        return &This->IWidget_iface;
    else
    {
        HeapFree(GetProcessHeap(), 0, This);
        return ((void*)0);
    }
}
