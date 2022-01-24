#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  block_mgr; } ;
struct TYPE_5__ {TYPE_1__* repo; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; int /*<<< orphan*/  version; } ;
typedef  TYPE_2__ SyncTask ;
typedef  int /*<<< orphan*/  GHashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  remove_block_cb ; 
 TYPE_3__* seaf ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC5 (void *vtask)
{
    SyncTask *task = vtask;

#if defined WIN32 || defined __APPLE__
    GHashTable *block_hash;

    block_hash = load_locked_files_blocks (task->repo->id);
    if (g_hash_table_size (block_hash) == 0) {
        g_hash_table_destroy (block_hash);
        seaf_block_manager_remove_store (seaf->block_mgr, task->repo->id);
        return vtask;
    }

    seaf_block_manager_foreach_block (seaf->block_mgr,
                                      task->repo->id,
                                      task->repo->version,
                                      remove_block_cb,
                                      block_hash);

    g_hash_table_destroy (block_hash);
#else
    FUNC4 (seaf->block_mgr, task->repo->id);
#endif

    return vtask;
}