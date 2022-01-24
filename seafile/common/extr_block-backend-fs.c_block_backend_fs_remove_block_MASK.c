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
typedef  int /*<<< orphan*/  BlockBackend ;

/* Variables and functions */
 int SEAF_PATH_MAX ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,char*,char const*,int) ; 

__attribute__((used)) static int
FUNC2 (BlockBackend *bend,
                               const char *store_id,
                               int version,
                               const char *block_id)
{
    char path[SEAF_PATH_MAX];

    FUNC1 (bend, block_id, path, store_id, version);

    return FUNC0 (path);
}