
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stub_manager {scalar_t__ extrefs; scalar_t__ weakrefs; scalar_t__ extern_conn; int oid; int lock; } ;
typedef scalar_t__ ULONG ;
typedef int BOOL ;


 int EXTCONN_STRONG ;
 int EnterCriticalSection (int *) ;
 int IExternalConnection_ReleaseConnection (scalar_t__,int ,int ,int) ;
 int LeaveCriticalSection (int *) ;
 int TRACE (char*,scalar_t__,struct stub_manager*,int ,scalar_t__) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 int stub_manager_int_release (struct stub_manager*) ;
 int wine_dbgstr_longlong (int ) ;

ULONG stub_manager_ext_release(struct stub_manager *m, ULONG refs, BOOL tableweak, BOOL last_unlock_releases)
{
    BOOL last_extern_ref;
    ULONG rc;

    EnterCriticalSection(&m->lock);


    refs = min(refs, m->extrefs);
    rc = (m->extrefs -= refs);

    if (tableweak)
        --m->weakrefs;
    if (!last_unlock_releases)
        rc += m->weakrefs;

    last_extern_ref = refs && !m->extrefs;

    LeaveCriticalSection(&m->lock);

    TRACE("removed %u refs from %p (oid %s), rc is now %u\n", refs, m, wine_dbgstr_longlong(m->oid), rc);

    if (last_extern_ref && m->extern_conn)
        IExternalConnection_ReleaseConnection(m->extern_conn, EXTCONN_STRONG, 0, last_unlock_releases);

    if (rc == 0)
        if (!(m->extern_conn && last_unlock_releases && m->weakrefs))
            stub_manager_int_release(m);

    return rc;
}
