#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mod_hash_val_t ;
struct TYPE_6__ {int /*<<< orphan*/  mhs_coll; } ;
struct TYPE_7__ {int /*<<< orphan*/  mh_contents; TYPE_1__ mh_stat; } ;
typedef  TYPE_2__ mod_hash_t ;
typedef  int /*<<< orphan*/  mod_hash_key_t ;
typedef  int /*<<< orphan*/  mod_hash_hndl_t ;

/* Variables and functions */
 int MH_ERR_DUPLICATE ; 
 int /*<<< orphan*/  RW_WRITER ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(mod_hash_t *hash, mod_hash_key_t key, mod_hash_val_t val)
{
	int res;
	mod_hash_val_t v;

	FUNC2(&hash->mh_contents, RW_WRITER);

	/*
	 * Disallow duplicate keys in the hash
	 */
	if (FUNC0(hash, key, &v) == 0) {
		FUNC3(&hash->mh_contents);
		hash->mh_stat.mhs_coll++;
		return (MH_ERR_DUPLICATE);
	}

	res = FUNC1(hash, key, val, (mod_hash_hndl_t)0);
	FUNC3(&hash->mh_contents);

	return (res);
}