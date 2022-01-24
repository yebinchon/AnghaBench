#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint64_t ;
typedef  int /*<<< orphan*/  kmutex_t ;
typedef  int /*<<< orphan*/  dva_t ;
typedef  int /*<<< orphan*/  blkptr_t ;
struct TYPE_5__ {struct TYPE_5__* b_hash_next; } ;
typedef  TYPE_1__ arc_buf_hdr_t ;
struct TYPE_6__ {TYPE_1__** ht_table; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*) ; 
 size_t FUNC1 (int /*<<< orphan*/  const*) ; 
 size_t FUNC2 (size_t,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/ * FUNC3 (size_t) ; 
 scalar_t__ FUNC4 (size_t,int /*<<< orphan*/  const*,size_t,TYPE_1__*) ; 
 TYPE_2__ buf_hash_table ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static arc_buf_hdr_t *
FUNC7(uint64_t spa, const blkptr_t *bp, kmutex_t **lockp)
{
	const dva_t *dva = FUNC0(bp);
	uint64_t birth = FUNC1(bp);
	uint64_t idx = FUNC2(spa, dva, birth);
	kmutex_t *hash_lock = FUNC3(idx);
	arc_buf_hdr_t *hdr;

	FUNC5(hash_lock);
	for (hdr = buf_hash_table.ht_table[idx]; hdr != NULL;
	    hdr = hdr->b_hash_next) {
		if (FUNC4(spa, dva, birth, hdr)) {
			*lockp = hash_lock;
			return (hdr);
		}
	}
	FUNC6(hash_lock);
	*lockp = NULL;
	return (NULL);
}