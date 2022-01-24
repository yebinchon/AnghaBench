#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {size_t bt_elem_size; } ;
typedef  TYPE_2__ zfs_btree_t ;
struct TYPE_7__ {int /*<<< orphan*/  bth_core; } ;
struct TYPE_9__ {scalar_t__ btl_elems; TYPE_1__ btl_hdr; } ;
typedef  TYPE_3__ zfs_btree_leaf_t ;
typedef  size_t uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,size_t) ; 

__attribute__((used)) static inline void
FUNC2(zfs_btree_t *tree, zfs_btree_leaf_t *source, uint64_t sidx,
    uint64_t count, zfs_btree_leaf_t *dest, uint64_t didx)
{
	size_t size = tree->bt_elem_size;
	FUNC0(!source->btl_hdr.bth_core);
	FUNC0(!dest->btl_hdr.bth_core);

	FUNC1(source->btl_elems + sidx * size, dest->btl_elems + didx * size,
	    count * size);
}