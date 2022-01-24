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
typedef  void* uint32_t ;
typedef  int /*<<< orphan*/  cdc ;
struct TYPE_5__ {scalar_t__ blk_sha1s; int /*<<< orphan*/  file_sum; int /*<<< orphan*/  write_block; void* block_max_sz; void* block_min_sz; void* block_sz; } ;
typedef  int /*<<< orphan*/  SeafileCrypt ;
typedef  int /*<<< orphan*/  SeafStat ;
typedef  TYPE_1__ CDCFileDescriptor ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (char const*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,TYPE_1__*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  seafile_write_chunk ; 

__attribute__((used)) static int
FUNC6 (const char *path, SeafStat *st,
                          SeafileCrypt *crypt, int repo_version,
                          uint32_t blk_avg_size, uint32_t blk_min_size, uint32_t blk_max_size,
                          unsigned char sha1[])
{
    CDCFileDescriptor cdc;

    FUNC3 (&cdc, 0, sizeof(cdc));
    cdc.block_sz = blk_avg_size;
    cdc.block_min_sz = blk_min_size;
    cdc.block_max_sz = blk_max_size;
    cdc.write_block = seafile_write_chunk;
    if (FUNC0 (path, &cdc, crypt, FALSE) < 0) {
        FUNC5 ("Failed to chunk file.\n");
        return -1;
    }

    if (repo_version > 0)
        FUNC4 (repo_version, &cdc, sha1);
    else
        FUNC2 (sha1, cdc.file_sum, 20);

    if (cdc.blk_sha1s)
        FUNC1 (cdc.blk_sha1s);

    return 0;
}