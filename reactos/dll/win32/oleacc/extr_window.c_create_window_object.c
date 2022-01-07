
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int * lpVtbl; } ;
struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_9__ {int ref; TYPE_5__ IAccessible_iface; TYPE_2__ IEnumVARIANT_iface; TYPE_1__ IOleWindow_iface; } ;
typedef TYPE_3__ Window ;
typedef int IID ;
typedef int HWND ;
typedef int HRESULT ;


 int E_FAIL ;
 int E_OUTOFMEMORY ;
 int IAccessible_QueryInterface (TYPE_5__*,int const*,void**) ;
 int IAccessible_Release (TYPE_5__*) ;
 int IsWindow (int ) ;
 int WindowEnumVARIANTVtbl ;
 int WindowOleWindowVtbl ;
 int WindowVtbl ;
 TYPE_3__* heap_alloc_zero (int) ;

HRESULT create_window_object(HWND hwnd, const IID *iid, void **obj)
{
    Window *window;
    HRESULT hres;

    if(!IsWindow(hwnd))
        return E_FAIL;

    window = heap_alloc_zero(sizeof(Window));
    if(!window)
        return E_OUTOFMEMORY;

    window->IAccessible_iface.lpVtbl = &WindowVtbl;
    window->IOleWindow_iface.lpVtbl = &WindowOleWindowVtbl;
    window->IEnumVARIANT_iface.lpVtbl = &WindowEnumVARIANTVtbl;
    window->ref = 1;

    hres = IAccessible_QueryInterface(&window->IAccessible_iface, iid, obj);
    IAccessible_Release(&window->IAccessible_iface);
    return hres;
}
