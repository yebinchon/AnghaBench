
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int * lpVtbl; } ;
struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_14__ {int * lpVtbl; } ;
struct TYPE_13__ {int * lpVtbl; } ;
struct TYPE_12__ {int * lpVtbl; } ;
struct TYPE_11__ {int * lpVtbl; } ;
struct TYPE_15__ {TYPE_2__ IObjectSafety_iface; TYPE_1__ IOleContainer_iface; TYPE_6__ IObjectWithSite_iface; TYPE_5__ IOleControl_iface; TYPE_4__ IOleDocument_iface; TYPE_3__ IOleObject_iface; } ;
typedef TYPE_7__ HTMLDocument ;


 int ObjectSafetyVtbl ;
 int ObjectWithSiteVtbl ;
 int OleContainerVtbl ;
 int OleControlVtbl ;
 int OleDocumentVtbl ;
 int OleObjectVtbl ;

void HTMLDocument_OleObj_Init(HTMLDocument *This)
{
    This->IOleObject_iface.lpVtbl = &OleObjectVtbl;
    This->IOleDocument_iface.lpVtbl = &OleDocumentVtbl;
    This->IOleControl_iface.lpVtbl = &OleControlVtbl;
    This->IObjectWithSite_iface.lpVtbl = &ObjectWithSiteVtbl;
    This->IOleContainer_iface.lpVtbl = &OleContainerVtbl;
    This->IObjectSafety_iface.lpVtbl = &ObjectSafetyVtbl;
}
