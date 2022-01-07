
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stub_manager {int disconnected; int oid; } ;
struct ifstub {int chan; int iface; scalar_t__ stubbuffer; int iid; int entry; int ipid; } ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,struct ifstub*) ;
 int IRpcChannelBuffer_Release (int ) ;
 int IRpcStubBuffer_Release (scalar_t__) ;
 int IUnknown_Release (int ) ;
 int RPC_UnregisterInterface (int *,int ) ;
 int TRACE (char*,struct stub_manager*,int ,int ) ;
 int TRUE ;
 int debugstr_guid (int *) ;
 int list_remove (int *) ;
 int wine_dbgstr_longlong (int ) ;

__attribute__((used)) static void stub_manager_delete_ifstub(struct stub_manager *m, struct ifstub *ifstub)
{
    TRACE("m=%p, m->oid=%s, ipid=%s\n", m, wine_dbgstr_longlong(m->oid), debugstr_guid(&ifstub->ipid));

    list_remove(&ifstub->entry);

    if (!m->disconnected)
        RPC_UnregisterInterface(&ifstub->iid, TRUE);

    if (ifstub->stubbuffer) IRpcStubBuffer_Release(ifstub->stubbuffer);
    IUnknown_Release(ifstub->iface);
    IRpcChannelBuffer_Release(ifstub->chan);

    HeapFree(GetProcessHeap(), 0, ifstub);
}
