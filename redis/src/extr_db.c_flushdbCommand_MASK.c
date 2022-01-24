#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* db; } ;
typedef  TYPE_2__ client ;
struct TYPE_11__ {int /*<<< orphan*/  dirty; } ;
struct TYPE_10__ {int /*<<< orphan*/  ok; } ;
struct TYPE_8__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 scalar_t__ C_ERR ; 
 int EMPTYDB_ASYNC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_4__ server ; 
 TYPE_3__ shared ; 

void FUNC4(client *c) {
    int flags;

    if (FUNC2(c,&flags) == C_ERR) return;
    server.dirty += FUNC1(c->db->id,flags,NULL);
    FUNC0(c,shared.ok);
#if defined(USE_JEMALLOC)
    /* jemalloc 5 doesn't release pages back to the OS when there's no traffic.
     * for large databases, flushdb blocks for long anyway, so a bit more won't
     * harm and this way the flush and purge will be synchroneus. */
    if (!(flags & EMPTYDB_ASYNC))
        jemalloc_purge();
#endif
}