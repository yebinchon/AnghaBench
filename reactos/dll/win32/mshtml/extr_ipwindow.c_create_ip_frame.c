
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_2__ IOleInPlaceFrame_iface; } ;
typedef TYPE_1__ InPlaceFrame ;
typedef TYPE_2__ IOleInPlaceFrame ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int OleInPlaceFrameVtbl ;
 int S_OK ;
 TYPE_1__* heap_alloc_zero (int) ;

HRESULT create_ip_frame(IOleInPlaceFrame **ret)
{
    InPlaceFrame *frame;

    frame = heap_alloc_zero(sizeof(*frame));
    if(!frame)
        return E_OUTOFMEMORY;

    frame->IOleInPlaceFrame_iface.lpVtbl = &OleInPlaceFrameVtbl;
    frame->ref = 1;

    *ret = &frame->IOleInPlaceFrame_iface;
    return S_OK;
}
