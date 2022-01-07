
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsIRequest ;
struct TYPE_5__ {TYPE_1__* nschannel; int nscontext; scalar_t__ nslistener; } ;
typedef TYPE_2__ nsChannelBSC ;
struct TYPE_4__ {int nsIHttpChannel_iface; scalar_t__ load_group; } ;
typedef int HRESULT ;


 int ERR (char*,int ) ;

 int NS_BINDING_ABORTED ;
 int NS_ERROR_FAILURE ;
 scalar_t__ NS_FAILED (int ) ;
 int NS_OK ;

 int WARN (char*,int ) ;
 int nsILoadGroup_RemoveRequest (scalar_t__,int *,int *,int ) ;
 int nsIStreamListener_OnStopRequest (scalar_t__,int *,int ,int ) ;

__attribute__((used)) static void on_stop_nsrequest(nsChannelBSC *This, HRESULT result)
{
    nsresult nsres, request_result;

    switch(result) {
    case 128:
        request_result = NS_OK;
        break;
    case 129:
        request_result = NS_BINDING_ABORTED;
        break;
    default:
        request_result = NS_ERROR_FAILURE;
    }

    if(This->nslistener) {
        nsres = nsIStreamListener_OnStopRequest(This->nslistener,
                 (nsIRequest*)&This->nschannel->nsIHttpChannel_iface, This->nscontext,
                 request_result);
        if(NS_FAILED(nsres))
            WARN("OnStopRequest failed: %08x\n", nsres);
    }

    if(This->nschannel && This->nschannel->load_group) {
        nsres = nsILoadGroup_RemoveRequest(This->nschannel->load_group,
                (nsIRequest*)&This->nschannel->nsIHttpChannel_iface, ((void*)0), request_result);
        if(NS_FAILED(nsres))
            ERR("RemoveRequest failed: %08x\n", nsres);
    }
}
