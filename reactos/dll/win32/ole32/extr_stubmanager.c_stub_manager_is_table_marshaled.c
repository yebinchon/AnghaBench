
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stub_manager {int dummy; } ;
struct ifstub {int flags; } ;
typedef int IPID ;
typedef int BOOL ;


 int MSHLFLAGS_TABLESTRONG ;
 int MSHLFLAGS_TABLEWEAK ;
 int assert (struct ifstub*) ;
 struct ifstub* stub_manager_ipid_to_ifstub (struct stub_manager*,int const*) ;

BOOL stub_manager_is_table_marshaled(struct stub_manager *m, const IPID *ipid)
{
    struct ifstub *ifstub = stub_manager_ipid_to_ifstub(m, ipid);

    assert( ifstub );

    return ifstub->flags & (MSHLFLAGS_TABLESTRONG | MSHLFLAGS_TABLEWEAK);
}
