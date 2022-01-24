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
struct stub_manager {int extrefs; int weakrefs; scalar_t__ extern_conn; int /*<<< orphan*/  oid; int /*<<< orphan*/  lock; } ;
typedef  int ULONG ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  EXTCONN_STRONG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,struct stub_manager*,int /*<<< orphan*/ ,int) ; 
 int ULONG_MAX ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

ULONG FUNC6(struct stub_manager *m, ULONG refs, BOOL tableweak)
{
    BOOL first_extern_ref;
    ULONG rc;

    FUNC0(&m->lock);

    first_extern_ref = refs && !m->extrefs;

    /* make sure we don't overflow extrefs */
    refs = FUNC4(refs, (ULONG_MAX-1 - m->extrefs));
    rc = (m->extrefs += refs);

    if (tableweak)
        rc += ++m->weakrefs;

    FUNC2(&m->lock);
    
    FUNC3("added %u refs to %p (oid %s), rc is now %u\n", refs, m, FUNC5(m->oid), rc);

    /*
     * NOTE: According to tests, creating a stub causes two AddConnection calls followed by
     * one ReleaseConnection call (with fLastReleaseCloses=FALSE).
     */
    if(first_extern_ref && m->extern_conn)
        FUNC1(m->extern_conn, EXTCONN_STRONG, 0);

    return rc;
}