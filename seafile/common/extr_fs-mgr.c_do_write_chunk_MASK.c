#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {int /*<<< orphan*/ * block_mgr; } ;
typedef  int /*<<< orphan*/  SeafBlockManager ;
typedef  int /*<<< orphan*/  BlockHandle ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 TYPE_1__* seaf ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char const*,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

__attribute__((used)) static int
FUNC8 (const char *repo_id, int version,
                uint8_t *checksum, const char *buf, int len)
{
    SeafBlockManager *blk_mgr = seaf->block_mgr;
    char chksum_str[41];
    BlockHandle *handle;
    int n;

    FUNC0 (checksum, chksum_str, 20);

    /* Don't write if the block already exists. */
    if (FUNC1 (seaf->block_mgr,
                                         repo_id, version,
                                         chksum_str))
        return 0;

    handle = FUNC5 (blk_mgr,
                                            repo_id, version,
                                            chksum_str, BLOCK_WRITE);
    if (!handle) {
        FUNC7 ("Failed to open block %s.\n", chksum_str);
        return -1;
    }

    n = FUNC6 (blk_mgr, handle, buf, len);
    if (n < 0) {
        FUNC7 ("Failed to write chunk %s.\n", chksum_str);
        FUNC3 (blk_mgr, handle);
        FUNC2 (blk_mgr, handle);
        return -1;
    }

    if (FUNC3 (blk_mgr, handle) < 0) {
        FUNC7 ("failed to close block %s.\n", chksum_str);
        FUNC2 (blk_mgr, handle);
        return -1;
    }

    if (FUNC4 (blk_mgr, handle) < 0) {
        FUNC7 ("failed to commit chunk %s.\n", chksum_str);
        FUNC2 (blk_mgr, handle);
        return -1;
    }

    FUNC2 (blk_mgr, handle);
    return 0;
}