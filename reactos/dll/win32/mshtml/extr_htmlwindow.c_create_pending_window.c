
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int IBindStatusCallback_iface; } ;
struct TYPE_13__ {TYPE_2__ bsc; } ;
typedef TYPE_3__ nsChannelBSC ;
struct TYPE_11__ {int IHTMLWindow2_iface; int * outer_window; } ;
struct TYPE_15__ {TYPE_1__ base; TYPE_3__* bscallback; } ;
struct TYPE_14__ {TYPE_5__* pending_window; int mon; } ;
typedef TYPE_4__ HTMLOuterWindow ;
typedef TYPE_5__ HTMLInnerWindow ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int IBindStatusCallback_AddRef (int *) ;
 int IHTMLWindow2_Release (int *) ;
 int S_OK ;
 int abort_window_bindings (TYPE_5__*) ;
 int create_inner_window (TYPE_4__*,int ,TYPE_5__**) ;

HRESULT create_pending_window(HTMLOuterWindow *outer_window, nsChannelBSC *channelbsc)
{
    HTMLInnerWindow *pending_window;
    HRESULT hres;

    hres = create_inner_window(outer_window, outer_window->mon , &pending_window);
    if(FAILED(hres))
        return hres;

    if(channelbsc) {
        IBindStatusCallback_AddRef(&channelbsc->bsc.IBindStatusCallback_iface);
        pending_window->bscallback = channelbsc;
    }

    if(outer_window->pending_window) {
        abort_window_bindings(outer_window->pending_window);
        outer_window->pending_window->base.outer_window = ((void*)0);
        IHTMLWindow2_Release(&outer_window->pending_window->base.IHTMLWindow2_iface);
    }

    outer_window->pending_window = pending_window;
    return S_OK;
}
