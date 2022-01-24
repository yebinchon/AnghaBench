#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ rw_type; int /*<<< orphan*/  block_id; int /*<<< orphan*/  store_id; int /*<<< orphan*/  tmp_file; int /*<<< orphan*/  version; } ;
typedef  int /*<<< orphan*/  BlockBackend ;
typedef  TYPE_1__ BHandle ;

/* Variables and functions */
 scalar_t__ BLOCK_WRITE ; 
 int SEAF_PATH_MAX ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6 (BlockBackend *bend,
                               BHandle *handle)
{
    char path[SEAF_PATH_MAX];

    FUNC2 (handle->rw_type == BLOCK_WRITE, -1);

    FUNC3 (bend, handle->block_id, path, handle->store_id, handle->version);

    if (FUNC0 (path) < 0) {
        FUNC4 ("Failed to create path for block %s:%s.\n",
                      handle->store_id, handle->block_id);
        return -1;
    }

    if (FUNC1 (handle->tmp_file, path) < 0) {
        FUNC4 ("[block bend] failed to commit block %s:%s: %s\n",
                      handle->store_id, handle->block_id, FUNC5(errno));
        return -1;
    }

    return 0;
}