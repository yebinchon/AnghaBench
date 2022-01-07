
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsISelection ;
struct TYPE_5__ {TYPE_1__* window; } ;
struct TYPE_4__ {int nswindow; } ;
typedef TYPE_2__ HTMLDocument ;


 int ERR (char*,int ) ;
 scalar_t__ NS_FAILED (int ) ;
 int nsIDOMWindow_GetSelection (int ,int **) ;

__attribute__((used)) static nsISelection *get_ns_selection(HTMLDocument *This)
{
    nsISelection *nsselection = ((void*)0);
    nsresult nsres;

    nsres = nsIDOMWindow_GetSelection(This->window->nswindow, &nsselection);
    if(NS_FAILED(nsres))
        ERR("GetSelection failed %08x\n", nsres);

    return nsselection;

}
