
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsIRequest ;
struct TYPE_9__ {TYPE_5__* window; } ;
struct TYPE_11__ {TYPE_2__ bsc; scalar_t__ is_doc_channel; int nscontext; TYPE_3__* nschannel; int nslistener; } ;
typedef TYPE_4__ nsChannelBSC ;
struct TYPE_13__ {scalar_t__ readystate; } ;
struct TYPE_8__ {TYPE_6__* outer_window; } ;
struct TYPE_12__ {TYPE_1__ base; } ;
struct TYPE_10__ {int response_status; int nsIHttpChannel_iface; } ;
typedef int HRESULT ;


 int E_ABORT ;
 int E_FAIL ;
 int FIXME (char*,int ) ;
 scalar_t__ NS_FAILED (int ) ;
 scalar_t__ READYSTATE_LOADING ;
 int S_OK ;
 int nsIStreamListener_OnStartRequest (int ,int *,int ) ;
 int set_ready_state (TYPE_6__*,scalar_t__) ;
 int update_window_doc (TYPE_5__*) ;

__attribute__((used)) static HRESULT on_start_nsrequest(nsChannelBSC *This)
{
    nsresult nsres;


    if(!This->nschannel->response_status)
        This->nschannel->response_status = 200;

    nsres = nsIStreamListener_OnStartRequest(This->nslistener,
            (nsIRequest*)&This->nschannel->nsIHttpChannel_iface, This->nscontext);
    if(NS_FAILED(nsres)) {
        FIXME("OnStartRequest failed: %08x\n", nsres);
        return E_FAIL;
    }

    if(This->is_doc_channel) {
        if(!This->bsc.window)
            return E_ABORT;
        update_window_doc(This->bsc.window);
        if(This->bsc.window->base.outer_window->readystate != READYSTATE_LOADING)
            set_ready_state(This->bsc.window->base.outer_window, READYSTATE_LOADING);
    }

    return S_OK;
}
