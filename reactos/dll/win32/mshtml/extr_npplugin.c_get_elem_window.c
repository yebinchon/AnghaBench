
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsIDOMWindow ;
typedef int nsIDOMHTMLElement ;
typedef int nsIDOMDocument ;
struct TYPE_4__ {int * inner_window; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
typedef TYPE_2__ HTMLOuterWindow ;
typedef int HTMLInnerWindow ;


 scalar_t__ NS_FAILED (int ) ;
 int nsIDOMDocument_GetDefaultView (int *,int **) ;
 int nsIDOMDocument_Release (int *) ;
 int nsIDOMHTMLElement_GetOwnerDocument (int *,int **) ;
 int nsIDOMWindow_Release (int *) ;
 TYPE_2__* nswindow_to_window (int *) ;

__attribute__((used)) static HTMLInnerWindow *get_elem_window(nsIDOMHTMLElement *elem)
{
    nsIDOMWindow *nswindow;
    nsIDOMDocument *nsdoc;
    HTMLOuterWindow *window;
    nsresult nsres;

    nsres = nsIDOMHTMLElement_GetOwnerDocument(elem, &nsdoc);
    if(NS_FAILED(nsres))
        return ((void*)0);

    nsres = nsIDOMDocument_GetDefaultView(nsdoc, &nswindow);
    nsIDOMDocument_Release(nsdoc);
    if(NS_FAILED(nsres) || !nswindow)
        return ((void*)0);

    window = nswindow_to_window(nswindow);
    nsIDOMWindow_Release(nswindow);

    return window->base.inner_window;
}
