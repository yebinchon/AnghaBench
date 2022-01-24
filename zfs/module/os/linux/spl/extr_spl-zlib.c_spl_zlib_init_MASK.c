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

/* Variables and functions */
 int /*<<< orphan*/  KMC_KVMEM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_MEM_LEVEL ; 
 int /*<<< orphan*/  MAX_WBITS ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  zlib_workspace_cache ; 

int
FUNC4(void)
{
	int size;

	size = FUNC0(FUNC2(MAX_WBITS, MAX_MEM_LEVEL),
	    FUNC3());

	zlib_workspace_cache = FUNC1(
	    "spl_zlib_workspace_cache",
	    size, 0, NULL, NULL, NULL, NULL, NULL,
	    KMC_KVMEM);
	if (!zlib_workspace_cache)
		return (1);

	return (0);
}