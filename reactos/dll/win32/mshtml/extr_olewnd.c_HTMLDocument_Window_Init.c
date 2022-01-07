
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_7__ {TYPE_2__ IOleInPlaceObjectWindowless_iface; TYPE_1__ IOleInPlaceActiveObject_iface; } ;
typedef TYPE_3__ HTMLDocument ;


 int OleInPlaceActiveObjectVtbl ;
 int OleInPlaceObjectWindowlessVtbl ;

void HTMLDocument_Window_Init(HTMLDocument *This)
{
    This->IOleInPlaceActiveObject_iface.lpVtbl = &OleInPlaceActiveObjectVtbl;
    This->IOleInPlaceObjectWindowless_iface.lpVtbl = &OleInPlaceObjectWindowlessVtbl;
}
