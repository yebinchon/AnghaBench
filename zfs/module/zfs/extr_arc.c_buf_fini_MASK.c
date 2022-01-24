#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int ht_mask; TYPE_1__* ht_locks; int /*<<< orphan*/  ht_table; } ;
struct TYPE_3__ {int /*<<< orphan*/  ht_lock; } ;

/* Variables and functions */
 int BUF_LOCKS ; 
 int /*<<< orphan*/  buf_cache ; 
 TYPE_2__ buf_hash_table ; 
 int /*<<< orphan*/  hdr_full_cache ; 
 int /*<<< orphan*/  hdr_full_crypt_cache ; 
 int /*<<< orphan*/  hdr_l2only_cache ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(void)
{
	int i;

#if defined(_KERNEL)
	/*
	 * Large allocations which do not require contiguous pages
	 * should be using vmem_free() in the linux kernel\
	 */
	vmem_free(buf_hash_table.ht_table,
	    (buf_hash_table.ht_mask + 1) * sizeof (void *));
#else
	FUNC1(buf_hash_table.ht_table,
	    (buf_hash_table.ht_mask + 1) * sizeof (void *));
#endif
	for (i = 0; i < BUF_LOCKS; i++)
		FUNC2(&buf_hash_table.ht_locks[i].ht_lock);
	FUNC0(hdr_full_cache);
	FUNC0(hdr_full_crypt_cache);
	FUNC0(hdr_l2only_cache);
	FUNC0(buf_cache);
}