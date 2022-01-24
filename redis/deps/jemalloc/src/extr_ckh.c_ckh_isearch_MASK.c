#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int lg_curbuckets; int /*<<< orphan*/  (* hash ) (void const*,size_t*) ;} ;
typedef  TYPE_1__ ckh_t ;

/* Variables and functions */
 size_t SIZE_T_MAX ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (TYPE_1__*,size_t,void const*) ; 
 int /*<<< orphan*/  FUNC3 (void const*,size_t*) ; 

__attribute__((used)) static size_t
FUNC4(ckh_t *ckh, const void *key) {
	size_t hashes[2], bucket, cell;

	FUNC1(ckh != NULL);

	ckh->hash(key, hashes);

	/* Search primary bucket. */
	bucket = hashes[0] & ((FUNC0(1) << ckh->lg_curbuckets) - 1);
	cell = FUNC2(ckh, bucket, key);
	if (cell != SIZE_T_MAX) {
		return cell;
	}

	/* Search secondary bucket. */
	bucket = hashes[1] & ((FUNC0(1) << ckh->lg_curbuckets) - 1);
	cell = FUNC2(ckh, bucket, key);
	return cell;
}