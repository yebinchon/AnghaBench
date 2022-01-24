#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mod_hash_val_t ;
struct TYPE_6__ {int /*<<< orphan*/  mh_contents; } ;
typedef  TYPE_1__ mod_hash_t ;
typedef  int /*<<< orphan*/  mod_hash_key_t ;
typedef  int /*<<< orphan*/  mod_hash_hndl_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(mod_hash_t *hash, mod_hash_key_t key, mod_hash_val_t val)
{
	int res;
	mod_hash_val_t v;

	FUNC3(&hash->mh_contents, RW_WRITER);

	if (FUNC2(hash, key, &v) == 0) {
		/*
		 * mod_hash_remove() takes care of freeing up the key resources.
		 */
		FUNC0(hash, v);
	}
	res = FUNC1(hash, key, val, (mod_hash_hndl_t)0);

	FUNC4(&hash->mh_contents);

	return (res);
}