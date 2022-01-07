
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* nsstream; scalar_t__ nscontext; scalar_t__ nslistener; TYPE_1__* nschannel; } ;
typedef TYPE_3__ nsChannelBSC ;
struct TYPE_7__ {int nsIInputStream_iface; } ;
struct TYPE_6__ {int nsIHttpChannel_iface; } ;
typedef int BSCallback ;


 int heap_free (TYPE_3__*) ;
 TYPE_3__* nsChannelBSC_from_BSCallback (int *) ;
 int nsIHttpChannel_Release (int *) ;
 int nsIInputStream_Release (int *) ;
 int nsIStreamListener_Release (scalar_t__) ;
 int nsISupports_Release (scalar_t__) ;

__attribute__((used)) static void nsChannelBSC_destroy(BSCallback *bsc)
{
    nsChannelBSC *This = nsChannelBSC_from_BSCallback(bsc);

    if(This->nschannel)
        nsIHttpChannel_Release(&This->nschannel->nsIHttpChannel_iface);
    if(This->nslistener)
        nsIStreamListener_Release(This->nslistener);
    if(This->nscontext)
        nsISupports_Release(This->nscontext);
    if(This->nsstream)
        nsIInputStream_Release(&This->nsstream->nsIInputStream_iface);
    heap_free(This);
}
