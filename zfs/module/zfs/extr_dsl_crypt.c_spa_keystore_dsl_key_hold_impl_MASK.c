#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_8__ {int /*<<< orphan*/  sk_dsl_keys; int /*<<< orphan*/  sk_dk_lock; } ;
struct TYPE_9__ {TYPE_1__ spa_keystore; } ;
typedef  TYPE_2__ spa_t ;
struct TYPE_10__ {int /*<<< orphan*/  dck_holds; int /*<<< orphan*/  dck_obj; } ;
typedef  TYPE_3__ dsl_crypto_key_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static int
FUNC5(spa_t *spa, uint64_t dckobj, void *tag,
    dsl_crypto_key_t **dck_out)
{
	int ret;
	dsl_crypto_key_t search_dck;
	dsl_crypto_key_t *found_dck;

	FUNC0(FUNC1(&spa->spa_keystore.sk_dk_lock));

	/* init the search key */
	search_dck.dck_obj = dckobj;

	/* find the matching key in the keystore */
	found_dck = FUNC3(&spa->spa_keystore.sk_dsl_keys, &search_dck, NULL);
	if (!found_dck) {
		ret = FUNC2(ENOENT);
		goto error;
	}

	/* increment the refcount */
	FUNC4(&found_dck->dck_holds, tag);

	*dck_out = found_dck;
	return (0);

error:
	*dck_out = NULL;
	return (ret);
}