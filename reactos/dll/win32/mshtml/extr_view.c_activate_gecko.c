
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int window; int hwnd; TYPE_1__* doc; } ;
struct TYPE_5__ {int hwnd; } ;
typedef TYPE_2__ NSContainer ;


 int SW_SHOW ;
 int SetParent (int ,int ) ;
 int ShowWindow (int ,int ) ;
 int TRACE (char*,TYPE_2__*,int ) ;
 int TRUE ;
 int nsIBaseWindow_SetEnabled (int ,int ) ;
 int nsIBaseWindow_SetVisibility (int ,int ) ;

__attribute__((used)) static void activate_gecko(NSContainer *This)
{
    TRACE("(%p) %p\n", This, This->window);

    SetParent(This->hwnd, This->doc->hwnd);
    ShowWindow(This->hwnd, SW_SHOW);

    nsIBaseWindow_SetVisibility(This->window, TRUE);
    nsIBaseWindow_SetEnabled(This->window, TRUE);
}
