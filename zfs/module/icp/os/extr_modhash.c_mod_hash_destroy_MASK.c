#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mod_hash_val_t ;
struct TYPE_5__ {int /*<<< orphan*/  mh_contents; } ;
typedef  TYPE_1__ mod_hash_t ;
typedef  int /*<<< orphan*/  mod_hash_key_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(mod_hash_t *hash, mod_hash_key_t key)
{
	mod_hash_val_t val;
	int rv;

	FUNC2(&hash->mh_contents, RW_WRITER);

	if ((rv = FUNC1(hash, key, &val)) == 0) {
		/*
		 * mod_hash_remove() takes care of freeing up the key resources.
		 */
		FUNC0(hash, val);
	}

	FUNC3(&hash->mh_contents);
	return (rv);
}