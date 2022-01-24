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
struct ext3_extent_idx {int dummy; } ;
struct ext3_extent_header {scalar_t__ eh_depth; int /*<<< orphan*/  eh_max; int /*<<< orphan*/  eh_entries; int /*<<< orphan*/  eh_magic; } ;
struct ext3_extent {int dummy; } ;
typedef  int /*<<< orphan*/  errcode_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXT2_ET_EXTENT_HEADER_BAD ; 
 int EXT3_EXT_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (struct ext3_extent_header*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

errcode_t FUNC2(void *ptr, int size)
{
	int eh_max, entry_size;
	struct ext3_extent_header *eh = ptr;

	FUNC0(eh);
	if (FUNC1(eh->eh_magic) != EXT3_EXT_MAGIC)
		return EXT2_ET_EXTENT_HEADER_BAD;
	if (FUNC1(eh->eh_entries) > FUNC1(eh->eh_max))
		return EXT2_ET_EXTENT_HEADER_BAD;
	if (eh->eh_depth == 0)
		entry_size = sizeof(struct ext3_extent);
	else
		entry_size = sizeof(struct ext3_extent_idx);

	eh_max = (size - sizeof(*eh)) / entry_size;
	/* Allow two extent-sized items at the end of the block, for
	 * ext4_extent_tail with checksum in the future. */
	if ((FUNC1(eh->eh_max) > eh_max) ||
	    (FUNC1(eh->eh_max) < (eh_max - 2)))
		return EXT2_ET_EXTENT_HEADER_BAD;

	return 0;
}