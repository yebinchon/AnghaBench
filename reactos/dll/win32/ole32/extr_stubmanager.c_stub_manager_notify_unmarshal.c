
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stub_manager {int lock; scalar_t__ norm_refs; } ;
struct ifstub {int flags; } ;
typedef int IPID ;
typedef int BOOL ;


 int ERR (char*,...) ;
 int EnterCriticalSection (int *) ;
 int FALSE ;
 int LeaveCriticalSection (int *) ;
 int MSHLFLAGS_NORMAL ;
 int TRUE ;
 int debugstr_guid (int const*) ;
 struct ifstub* stub_manager_ipid_to_ifstub (struct stub_manager*,int const*) ;

BOOL stub_manager_notify_unmarshal(struct stub_manager *m, const IPID *ipid)
{
    BOOL ret = TRUE;
    struct ifstub *ifstub;

    if (!(ifstub = stub_manager_ipid_to_ifstub(m, ipid)))
    {
        ERR("attempted unmarshal of unknown IPID %s\n", debugstr_guid(ipid));
        return FALSE;
    }

    EnterCriticalSection(&m->lock);


    if (ifstub->flags & MSHLFLAGS_NORMAL)
    {
        if (m->norm_refs)
            m->norm_refs--;
        else
        {
            ERR("attempted invalid normal unmarshal, norm_refs is zero\n");
            ret = FALSE;
        }
    }

    LeaveCriticalSection(&m->lock);

    return ret;
}
