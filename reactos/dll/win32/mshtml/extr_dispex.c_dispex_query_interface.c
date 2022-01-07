
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int IDispatchEx_iface; } ;
typedef int REFIID ;
typedef int IUnknown ;
typedef TYPE_1__ DispatchEx ;
typedef int BOOL ;


 int FALSE ;
 int IID_IDispatch ;
 int IID_IDispatchEx ;
 int IID_IDispatchJS ;
 int IID_UndocumentedScriptIface ;
 int IUnknown_AddRef (int *) ;
 scalar_t__ IsEqualGUID (int *,int ) ;
 int TRUE ;

BOOL dispex_query_interface(DispatchEx *This, REFIID riid, void **ppv)
{
    if(IsEqualGUID(&IID_IDispatch, riid))
        *ppv = &This->IDispatchEx_iface;
    else if(IsEqualGUID(&IID_IDispatchEx, riid))
        *ppv = &This->IDispatchEx_iface;
    else if(IsEqualGUID(&IID_IDispatchJS, riid))
        *ppv = ((void*)0);
    else if(IsEqualGUID(&IID_UndocumentedScriptIface, riid))
        *ppv = ((void*)0);
    else
        return FALSE;

    if(*ppv)
        IUnknown_AddRef((IUnknown*)*ppv);
    return TRUE;
}
