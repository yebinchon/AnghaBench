
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_7__ {TYPE_2__ IViewObjectEx_iface; TYPE_1__ IOleDocumentView_iface; } ;
typedef TYPE_3__ HTMLDocument ;


 int OleDocumentViewVtbl ;
 int ViewObjectVtbl ;

void HTMLDocument_View_Init(HTMLDocument *This)
{
    This->IOleDocumentView_iface.lpVtbl = &OleDocumentViewVtbl;
    This->IViewObjectEx_iface.lpVtbl = &ViewObjectVtbl;
}
