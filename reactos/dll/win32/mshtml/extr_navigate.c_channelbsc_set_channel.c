
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int nsISupports ;
typedef int nsIStreamListener ;
struct TYPE_7__ {int * headers; } ;
struct TYPE_8__ {TYPE_1__ request_data; } ;
struct TYPE_9__ {TYPE_2__ bsc; int * nscontext; int * nslistener; TYPE_4__* nschannel; } ;
typedef TYPE_3__ nsChannelBSC ;
struct TYPE_10__ {int request_headers; int nsIHttpChannel_iface; } ;
typedef TYPE_4__ nsChannel ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int WARN (char*,int ) ;
 int heap_free (int *) ;
 int nsIHttpChannel_AddRef (int *) ;
 int nsIStreamListener_AddRef (int *) ;
 int nsISupports_AddRef (int *) ;
 int parse_headers (int *,int *) ;

void channelbsc_set_channel(nsChannelBSC *This, nsChannel *channel, nsIStreamListener *listener, nsISupports *context)
{
    nsIHttpChannel_AddRef(&channel->nsIHttpChannel_iface);
    This->nschannel = channel;

    nsIStreamListener_AddRef(listener);
    This->nslistener = listener;

    if(context) {
        nsISupports_AddRef(context);
        This->nscontext = context;
    }

    if(This->bsc.request_data.headers) {
        HRESULT hres;

        hres = parse_headers(This->bsc.request_data.headers, &channel->request_headers);
        heap_free(This->bsc.request_data.headers);
        This->bsc.request_data.headers = ((void*)0);
        if(FAILED(hres))
            WARN("parse_headers failed: %08x\n", hres);
    }
}
