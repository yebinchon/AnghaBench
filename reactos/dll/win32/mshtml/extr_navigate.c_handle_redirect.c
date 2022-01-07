
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int nsresult ;
struct TYPE_12__ {int nsIAsyncVerifyRedirectCallback_iface; TYPE_5__* nschannel; } ;
typedef TYPE_1__ nsRedirectCallback ;
typedef int nsIChannelEventSink ;
typedef int nsIChannel ;
struct TYPE_13__ {TYPE_5__* nschannel; } ;
typedef TYPE_2__ nsChannelBSC ;
struct TYPE_14__ {int nsIHttpChannel_iface; } ;
typedef TYPE_3__ nsChannel ;
typedef int WCHAR ;
struct TYPE_15__ {int nsIHttpChannel_iface; int notif_callback; } ;
typedef int HRESULT ;


 int FIXME (char*,...) ;
 int IID_nsIChannelEventSink ;
 scalar_t__ NS_FAILED (int ) ;
 int REDIRECT_TEMPORARY ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int TRACE (char*,TYPE_2__*,TYPE_5__*,...) ;
 int create_redirect_callback (TYPE_3__*,TYPE_2__*,TYPE_1__**) ;
 int create_redirect_nschannel (int const*,TYPE_5__*,TYPE_3__**) ;
 int debugstr_w (int const*) ;
 int nsIAsyncVerifyRedirectCallback_Release (int *) ;
 int nsIChannelEventSink_AsyncOnChannelRedirect (int *,int *,int *,int ,int *) ;
 int nsIChannelEventSink_Release (int *) ;
 int nsIHttpChannel_Release (int *) ;
 int nsIInterfaceRequestor_GetInterface (int ,int *,void**) ;

__attribute__((used)) static HRESULT handle_redirect(nsChannelBSC *This, const WCHAR *new_url)
{
    nsRedirectCallback *callback;
    nsIChannelEventSink *sink;
    nsChannel *new_channel;
    nsresult nsres;
    HRESULT hres;

    TRACE("(%p)->(%s)\n", This, debugstr_w(new_url));

    if(!This->nschannel || !This->nschannel->notif_callback)
        return S_OK;

    nsres = nsIInterfaceRequestor_GetInterface(This->nschannel->notif_callback, &IID_nsIChannelEventSink, (void**)&sink);
    if(NS_FAILED(nsres))
        return S_OK;

    hres = create_redirect_nschannel(new_url, This->nschannel, &new_channel);
    if(SUCCEEDED(hres)) {
        TRACE("%p %p->%p\n", This, This->nschannel, new_channel);

        hres = create_redirect_callback(new_channel, This, &callback);
        nsIHttpChannel_Release(&new_channel->nsIHttpChannel_iface);
    }

    if(SUCCEEDED(hres)) {
        nsres = nsIChannelEventSink_AsyncOnChannelRedirect(sink, (nsIChannel*)&This->nschannel->nsIHttpChannel_iface,
                (nsIChannel*)&callback->nschannel->nsIHttpChannel_iface, REDIRECT_TEMPORARY,
                &callback->nsIAsyncVerifyRedirectCallback_iface);

        if(NS_FAILED(nsres))
            FIXME("AsyncOnChannelRedirect failed: %08x\n", hres);
        else if(This->nschannel != callback->nschannel)
            FIXME("nschannel not updated\n");

        nsIAsyncVerifyRedirectCallback_Release(&callback->nsIAsyncVerifyRedirectCallback_iface);
    }

    nsIChannelEventSink_Release(sink);
    return hres;
}
