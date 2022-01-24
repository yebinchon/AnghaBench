#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct stub_manager {scalar_t__ extrefs; scalar_t__ weakrefs; scalar_t__ extern_conn; int /*<<< orphan*/  oid; int /*<<< orphan*/  lock; } ;
typedef  scalar_t__ ULONG ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  EXTCONN_STRONG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,struct stub_manager*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct stub_manager*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

ULONG FUNC7(struct stub_manager *m, ULONG refs, BOOL tableweak, BOOL last_unlock_releases)
{
    BOOL last_extern_ref;
    ULONG rc;

    FUNC0(&m->lock);

    /* make sure we don't underflow extrefs */
    refs = FUNC4(refs, m->extrefs);
    rc = (m->extrefs -= refs);

    if (tableweak)
        --m->weakrefs;
    if (!last_unlock_releases)
        rc += m->weakrefs;

    last_extern_ref = refs && !m->extrefs;

    FUNC2(&m->lock);
    
    FUNC3("removed %u refs from %p (oid %s), rc is now %u\n", refs, m, FUNC6(m->oid), rc);

    if (last_extern_ref && m->extern_conn)
        FUNC1(m->extern_conn, EXTCONN_STRONG, 0, last_unlock_releases);

    if (rc == 0)
        if (!(m->extern_conn && last_unlock_releases && m->weakrefs))
            FUNC5(m);

    return rc;
}