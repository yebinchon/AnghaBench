
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifproxy {scalar_t__ proxy; int * chan; int entry; } ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,struct ifproxy*) ;
 int IRpcChannelBuffer_Release (int *) ;
 int IRpcProxyBuffer_Release (scalar_t__) ;
 int TRACE (char*,struct ifproxy*) ;
 int ifproxy_release_public_refs (struct ifproxy*) ;
 int list_remove (int *) ;

__attribute__((used)) static void ifproxy_destroy(struct ifproxy * This)
{
    TRACE("%p\n", This);



    ifproxy_release_public_refs(This);

    list_remove(&This->entry);

    if (This->chan)
    {
        IRpcChannelBuffer_Release(This->chan);
        This->chan = ((void*)0);
    }

    if (This->proxy) IRpcProxyBuffer_Release(This->proxy);

    HeapFree(GetProcessHeap(), 0, This);
}
