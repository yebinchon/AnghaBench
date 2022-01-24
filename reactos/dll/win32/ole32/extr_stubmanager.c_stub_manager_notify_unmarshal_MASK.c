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
struct stub_manager {int /*<<< orphan*/  lock; scalar_t__ norm_refs; } ;
struct ifstub {int flags; } ;
typedef  int /*<<< orphan*/  IPID ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int MSHLFLAGS_NORMAL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 struct ifstub* FUNC4 (struct stub_manager*,int /*<<< orphan*/  const*) ; 

BOOL FUNC5(struct stub_manager *m, const IPID *ipid)
{
    BOOL ret = TRUE;
    struct ifstub *ifstub;

    if (!(ifstub = FUNC4(m, ipid)))
    {
        FUNC0("attempted unmarshal of unknown IPID %s\n", FUNC3(ipid));
        return FALSE;
    }

    FUNC1(&m->lock);

    /* track normal marshals so we can enforce rules whilst in-process */
    if (ifstub->flags & MSHLFLAGS_NORMAL)
    {
        if (m->norm_refs)
            m->norm_refs--;
        else
        {
            FUNC0("attempted invalid normal unmarshal, norm_refs is zero\n");
            ret = FALSE;
        }
    }

    FUNC2(&m->lock);

    return ret;
}