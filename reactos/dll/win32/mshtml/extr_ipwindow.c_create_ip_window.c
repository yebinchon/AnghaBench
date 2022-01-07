
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_2__ IOleInPlaceUIWindow_iface; } ;
typedef TYPE_1__ InPlaceUIWindow ;
typedef TYPE_2__ IOleInPlaceUIWindow ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int OleInPlaceUIWindowVtbl ;
 int S_OK ;
 TYPE_1__* heap_alloc_zero (int) ;

HRESULT create_ip_window(IOleInPlaceUIWindow **ret)
{
    InPlaceUIWindow *uiwindow;

    uiwindow = heap_alloc_zero(sizeof(*uiwindow));
    if(!uiwindow)
        return E_OUTOFMEMORY;

    uiwindow->IOleInPlaceUIWindow_iface.lpVtbl = &OleInPlaceUIWindowVtbl;
    uiwindow->ref = 1;

    *ret = &uiwindow->IOleInPlaceUIWindow_iface;
    return S_OK;
}
