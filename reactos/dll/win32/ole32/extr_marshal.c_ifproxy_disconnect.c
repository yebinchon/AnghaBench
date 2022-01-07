
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifproxy {int * chan; scalar_t__ proxy; } ;


 int IRpcChannelBuffer_Release (int *) ;
 int IRpcProxyBuffer_Disconnect (scalar_t__) ;
 int ifproxy_release_public_refs (struct ifproxy*) ;

__attribute__((used)) static void ifproxy_disconnect(struct ifproxy * This)
{
    ifproxy_release_public_refs(This);
    if (This->proxy) IRpcProxyBuffer_Disconnect(This->proxy);

    IRpcChannelBuffer_Release(This->chan);
    This->chan = ((void*)0);
}
