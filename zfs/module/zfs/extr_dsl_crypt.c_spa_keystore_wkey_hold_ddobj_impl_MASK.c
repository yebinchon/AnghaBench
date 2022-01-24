#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_9__ {int /*<<< orphan*/  sk_wkeys; int /*<<< orphan*/  sk_wkeys_lock; } ;
struct TYPE_10__ {TYPE_1__ spa_keystore; } ;
typedef  TYPE_2__ spa_t ;
struct TYPE_11__ {int /*<<< orphan*/  wk_ddobj; } ;
typedef  TYPE_3__ dsl_wrapping_key_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,void*) ; 

__attribute__((used)) static int
FUNC5(spa_t *spa, uint64_t ddobj,
    void *tag, dsl_wrapping_key_t **wkey_out)
{
	int ret;
	dsl_wrapping_key_t search_wkey;
	dsl_wrapping_key_t *found_wkey;

	FUNC0(FUNC1(&spa->spa_keystore.sk_wkeys_lock));

	/* init the search wrapping key */
	search_wkey.wk_ddobj = ddobj;

	/* lookup the wrapping key */
	found_wkey = FUNC3(&spa->spa_keystore.sk_wkeys, &search_wkey, NULL);
	if (!found_wkey) {
		ret = FUNC2(ENOENT);
		goto error;
	}

	/* increment the refcount */
	FUNC4(found_wkey, tag);

	*wkey_out = found_wkey;
	return (0);

error:
	*wkey_out = NULL;
	return (ret);
}