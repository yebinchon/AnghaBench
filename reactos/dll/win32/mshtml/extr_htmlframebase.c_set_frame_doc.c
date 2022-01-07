
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsIDOMWindow ;
typedef int nsIDOMDocument ;
struct TYPE_12__ {TYPE_2__* doc; } ;
struct TYPE_13__ {TYPE_3__ node; } ;
struct TYPE_15__ {TYPE_5__* content_window; TYPE_4__ element; } ;
struct TYPE_14__ {TYPE_6__* frame_element; } ;
struct TYPE_10__ {int window; int doc_obj; } ;
struct TYPE_11__ {TYPE_1__ basedoc; } ;
typedef TYPE_5__ HTMLOuterWindow ;
typedef TYPE_6__ HTMLFrameBase ;
typedef int HRESULT ;


 int E_FAIL ;
 scalar_t__ FAILED (int ) ;
 int HTMLOuterWindow_Create (int ,int *,int ,TYPE_5__**) ;
 scalar_t__ NS_FAILED (int ) ;
 int S_OK ;
 int nsIDOMDocument_GetDefaultView (int *,int **) ;
 int nsIDOMWindow_Release (int *) ;
 TYPE_5__* nswindow_to_window (int *) ;

HRESULT set_frame_doc(HTMLFrameBase *frame, nsIDOMDocument *nsdoc)
{
    nsIDOMWindow *nswindow;
    HTMLOuterWindow *window;
    nsresult nsres;
    HRESULT hres = S_OK;

    if(frame->content_window)
        return S_OK;

    nsres = nsIDOMDocument_GetDefaultView(nsdoc, &nswindow);
    if(NS_FAILED(nsres) || !nswindow)
        return E_FAIL;

    window = nswindow_to_window(nswindow);
    if(!window)
        hres = HTMLOuterWindow_Create(frame->element.node.doc->basedoc.doc_obj, nswindow,
                frame->element.node.doc->basedoc.window, &window);
    nsIDOMWindow_Release(nswindow);
    if(FAILED(hres))
        return hres;

    frame->content_window = window;
    window->frame_element = frame;
    return S_OK;
}
