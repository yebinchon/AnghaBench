#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ rw_type; struct TYPE_5__* store_id; struct TYPE_5__* tmp_file; } ;
typedef  int /*<<< orphan*/  BlockBackend ;
typedef  TYPE_1__ BHandle ;

/* Variables and functions */
 scalar_t__ BLOCK_WRITE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC2 (BlockBackend *bend,
                                    BHandle *handle)
{
    if (handle->rw_type == BLOCK_WRITE) {
        /* make sure the tmp file is removed even on failure. */
        FUNC1 (handle->tmp_file);
        FUNC0 (handle->tmp_file);
    }
    FUNC0 (handle->store_id);
    FUNC0 (handle);
}