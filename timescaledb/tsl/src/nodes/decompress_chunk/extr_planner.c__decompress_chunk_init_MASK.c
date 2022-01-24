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
 int /*<<< orphan*/ * FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  decompress_chunk_plan_methods ; 

void
FUNC2(void)
{
	/*
	 * Because we reinitialize the tsl stuff when the license
	 * changes the init function may be called multiple times
	 * per session so we check if ChunkDecompress node has been
	 * registered already here to prevent registering it twice.
	 */
	if (FUNC0("DecompressChunk", true) == NULL)
	{
		FUNC1(&decompress_chunk_plan_methods);
	}
}