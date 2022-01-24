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
typedef  int /*<<< orphan*/  GKeyFile ;
typedef  int /*<<< orphan*/  BlockBackend ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

BlockBackend*
FUNC4(GKeyFile *config)
{
    BlockBackend *bend;
    char *tmp_dir;
    char *block_dir;
    
    block_dir = FUNC2 (config, "block_backend", "block_dir", NULL);
    if (!block_dir) {
        FUNC3 ("Block dir not set in config.\n");
        return NULL;
    }

    tmp_dir = FUNC2 (config, "block_backend", "tmp_dir", NULL);
    if (!tmp_dir) {
        FUNC3 ("Block tmp dir not set in config.\n");
        return NULL;
    }

    bend = FUNC0 (block_dir, tmp_dir);

    FUNC1 (block_dir);
    FUNC1 (tmp_dir);
    return bend;
}