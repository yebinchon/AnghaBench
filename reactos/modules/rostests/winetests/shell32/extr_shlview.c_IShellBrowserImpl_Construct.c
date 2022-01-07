
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_2__ IShellBrowser_iface; } ;
typedef TYPE_1__ IShellBrowserImpl ;
typedef TYPE_2__ IShellBrowser ;


 int IShellBrowserImpl_Vtbl ;
 TYPE_1__* heap_alloc (int) ;

__attribute__((used)) static IShellBrowser* IShellBrowserImpl_Construct(void)
{
    IShellBrowserImpl *browser;

    browser = heap_alloc(sizeof(*browser));
    browser->IShellBrowser_iface.lpVtbl = &IShellBrowserImpl_Vtbl;
    browser->ref = 1;

    return &browser->IShellBrowser_iface;
}
