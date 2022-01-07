
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stub_manager {int extrefs; int weakrefs; scalar_t__ extern_conn; int oid; int lock; } ;
typedef int ULONG ;
typedef int BOOL ;


 int EXTCONN_STRONG ;
 int EnterCriticalSection (int *) ;
 int IExternalConnection_AddConnection (scalar_t__,int ,int ) ;
 int LeaveCriticalSection (int *) ;
 int TRACE (char*,int,struct stub_manager*,int ,int) ;
 int ULONG_MAX ;
 int min (int,int) ;
 int wine_dbgstr_longlong (int ) ;

ULONG stub_manager_ext_addref(struct stub_manager *m, ULONG refs, BOOL tableweak)
{
    BOOL first_extern_ref;
    ULONG rc;

    EnterCriticalSection(&m->lock);

    first_extern_ref = refs && !m->extrefs;


    refs = min(refs, (ULONG_MAX-1 - m->extrefs));
    rc = (m->extrefs += refs);

    if (tableweak)
        rc += ++m->weakrefs;

    LeaveCriticalSection(&m->lock);

    TRACE("added %u refs to %p (oid %s), rc is now %u\n", refs, m, wine_dbgstr_longlong(m->oid), rc);





    if(first_extern_ref && m->extern_conn)
        IExternalConnection_AddConnection(m->extern_conn, EXTCONN_STRONG, 0);

    return rc;
}
