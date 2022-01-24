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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  abd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vdev_initialize_block_fill ; 
 int zfs_initialize_chunk_size ; 

__attribute__((used)) static abd_t *
FUNC3(void)
{
	/* Allocate ABD for filler data */
	abd_t *data = FUNC1(zfs_initialize_chunk_size, B_FALSE);

	FUNC0(zfs_initialize_chunk_size % sizeof (uint64_t));
	(void) FUNC2(data, 0, zfs_initialize_chunk_size,
	    vdev_initialize_block_fill, NULL);

	return (data);
}