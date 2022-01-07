
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int nsresult ;
struct TYPE_12__ {int nsIFileURL_iface; } ;
typedef TYPE_3__ nsWineURI ;
struct TYPE_13__ {int load_flags; scalar_t__ request_method; scalar_t__ referrer; scalar_t__ original_uri; scalar_t__ notif_callback; scalar_t__ load_group; TYPE_2__* uri; } ;
typedef TYPE_4__ nsChannel ;
typedef int WCHAR ;
struct TYPE_11__ {TYPE_1__* window_ref; } ;
struct TYPE_10__ {int * window; } ;
typedef int IUri ;
typedef int HTMLOuterWindow ;
typedef int HRESULT ;


 int E_FAIL ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*) ;
 int IUri_Release (int *) ;
 int LOAD_REPLACE ;
 scalar_t__ METHOD_POST ;
 scalar_t__ NS_FAILED (int ) ;
 int S_OK ;
 int create_nschannel (TYPE_3__*,TYPE_4__**) ;
 int create_nsuri (int *,int *,int *,int *,TYPE_3__**) ;
 int create_uri (int const*,int ,int **) ;
 int nsIFileURL_Release (int *) ;
 int nsIInterfaceRequestor_AddRef (scalar_t__) ;
 int nsILoadGroup_AddRef (scalar_t__) ;
 int nsIURI_AddRef (scalar_t__) ;

HRESULT create_redirect_nschannel(const WCHAR *url, nsChannel *orig_channel, nsChannel **ret)
{
    HTMLOuterWindow *window = ((void*)0);
    nsChannel *channel;
    nsWineURI *uri;
    IUri *iuri;
    nsresult nsres;
    HRESULT hres;

    hres = create_uri(url, 0, &iuri);
    if(FAILED(hres))
        return hres;

    if(orig_channel->uri->window_ref)
        window = orig_channel->uri->window_ref->window;
    nsres = create_nsuri(iuri, window, ((void*)0), ((void*)0), &uri);
    IUri_Release(iuri);
    if(NS_FAILED(nsres))
        return E_FAIL;

    nsres = create_nschannel(uri, &channel);
    nsIFileURL_Release(&uri->nsIFileURL_iface);
    if(NS_FAILED(nsres))
        return E_FAIL;

    if(orig_channel->load_group) {
        nsILoadGroup_AddRef(orig_channel->load_group);
        channel->load_group = orig_channel->load_group;
    }

    if(orig_channel->notif_callback) {
        nsIInterfaceRequestor_AddRef(orig_channel->notif_callback);
        channel->notif_callback = orig_channel->notif_callback;
    }

    channel->load_flags = orig_channel->load_flags | LOAD_REPLACE;

    if(orig_channel->request_method == METHOD_POST)
        FIXME("unsupported POST method\n");

    if(orig_channel->original_uri) {
        nsIURI_AddRef(orig_channel->original_uri);
        channel->original_uri = orig_channel->original_uri;
    }

    if(orig_channel->referrer) {
        nsIURI_AddRef(orig_channel->referrer);
        channel->referrer = orig_channel->referrer;
    }

    *ret = channel;
    return S_OK;
}
