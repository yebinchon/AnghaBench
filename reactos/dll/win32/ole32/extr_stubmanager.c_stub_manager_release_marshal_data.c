
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stub_manager {int dummy; } ;
struct ifstub {int flags; } ;
typedef int ULONG ;
typedef int IPID ;
typedef int BOOL ;


 int MSHLFLAGS_TABLESTRONG ;
 int MSHLFLAGS_TABLEWEAK ;
 int stub_manager_ext_release (struct stub_manager*,int,int ,int) ;
 struct ifstub* stub_manager_ipid_to_ifstub (struct stub_manager*,int const*) ;

void stub_manager_release_marshal_data(struct stub_manager *m, ULONG refs, const IPID *ipid, BOOL tableweak)
{
    struct ifstub *ifstub;

    if (!(ifstub = stub_manager_ipid_to_ifstub(m, ipid)))
        return;

    if (ifstub->flags & MSHLFLAGS_TABLEWEAK)
        refs = 0;
    else if (ifstub->flags & MSHLFLAGS_TABLESTRONG)
        refs = 1;

    stub_manager_ext_release(m, refs, tableweak, !tableweak);
}
