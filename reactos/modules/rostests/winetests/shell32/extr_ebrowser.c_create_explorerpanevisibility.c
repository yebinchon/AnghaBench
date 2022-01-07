
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_1__ IExplorerPaneVisibility_iface; } ;
typedef TYPE_2__ IExplorerPaneVisibilityImpl ;


 int epvvt ;
 TYPE_2__* heap_alloc_zero (int) ;

__attribute__((used)) static IExplorerPaneVisibilityImpl *create_explorerpanevisibility(void)
{
    IExplorerPaneVisibilityImpl *epv;

    epv = heap_alloc_zero(sizeof(*epv));
    epv->IExplorerPaneVisibility_iface.lpVtbl = &epvvt;
    epv->ref = 1;

    return epv;
}
