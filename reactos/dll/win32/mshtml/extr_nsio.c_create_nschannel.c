
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int nsresult ;
struct TYPE_13__ {int nsIFileURL_iface; } ;
typedef TYPE_4__ nsWineURI ;
struct TYPE_12__ {int * lpVtbl; } ;
struct TYPE_11__ {int * lpVtbl; } ;
struct TYPE_10__ {int * lpVtbl; } ;
struct TYPE_14__ {int ref; TYPE_4__* uri; int request_headers; int response_headers; int request_method; TYPE_3__ nsIHttpChannelInternal_iface; TYPE_2__ nsIUploadChannel_iface; TYPE_1__ nsIHttpChannel_iface; } ;
typedef TYPE_5__ nsChannel ;


 int METHOD_GET ;
 int NS_ERROR_OUT_OF_MEMORY ;
 int NS_ERROR_UNEXPECTED ;
 int NS_OK ;
 int ensure_uri (TYPE_4__*) ;
 TYPE_5__* heap_alloc_zero (int) ;
 int list_init (int *) ;
 int nsChannelVtbl ;
 int nsHttpChannelInternalVtbl ;
 int nsIFileURL_AddRef (int *) ;
 int nsUploadChannelVtbl ;

__attribute__((used)) static nsresult create_nschannel(nsWineURI *uri, nsChannel **ret)
{
    nsChannel *channel;

    if(!ensure_uri(uri))
        return NS_ERROR_UNEXPECTED;

    channel = heap_alloc_zero(sizeof(nsChannel));
    if(!channel)
        return NS_ERROR_OUT_OF_MEMORY;

    channel->nsIHttpChannel_iface.lpVtbl = &nsChannelVtbl;
    channel->nsIUploadChannel_iface.lpVtbl = &nsUploadChannelVtbl;
    channel->nsIHttpChannelInternal_iface.lpVtbl = &nsHttpChannelInternalVtbl;
    channel->ref = 1;
    channel->request_method = METHOD_GET;
    list_init(&channel->response_headers);
    list_init(&channel->request_headers);

    nsIFileURL_AddRef(&uri->nsIFileURL_iface);
    channel->uri = uri;

    *ret = channel;
    return NS_OK;
}
