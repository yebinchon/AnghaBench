#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * (* stat_block ) (TYPE_2__*,char const*,int,char const*) ;} ;
struct TYPE_4__ {TYPE_2__* backend; } ;
typedef  TYPE_1__ SeafBlockManager ;
typedef  int /*<<< orphan*/  BlockMetadata ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,char const*,int,char const*) ; 

BlockMetadata *
FUNC3 (SeafBlockManager *mgr,
                               const char *store_id,
                               int version,
                               const char *block_id)
{
    if (!store_id || !FUNC1(store_id) ||
        !block_id || !FUNC0(block_id))
        return NULL;

    return mgr->backend->stat_block (mgr->backend, store_id, version, block_id);
}