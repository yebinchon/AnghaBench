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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

BlockBackend*
FUNC5 (GKeyFile *config)
{
    char *backend;
    BlockBackend *bend;

    backend = FUNC1 (config, "block_backend", "name", NULL);
    if (!backend) {
        return NULL;
    }

    if (FUNC4(backend, "filesystem") == 0) {
        bend = FUNC2(config);
        FUNC0 (backend);
        return bend;
    }

    FUNC3 ("Unknown backend\n");
    return NULL;
}