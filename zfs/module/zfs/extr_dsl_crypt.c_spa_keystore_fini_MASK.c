#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  sk_dk_lock; int /*<<< orphan*/  sk_km_lock; int /*<<< orphan*/  sk_wkeys_lock; int /*<<< orphan*/  sk_dsl_keys; int /*<<< orphan*/  sk_key_mappings; int /*<<< orphan*/  sk_wkeys; } ;
typedef  TYPE_1__ spa_keystore_t ;
typedef  int /*<<< orphan*/  dsl_wrapping_key_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(spa_keystore_t *sk)
{
	dsl_wrapping_key_t *wkey;
	void *cookie = NULL;

	FUNC0(FUNC3(&sk->sk_dsl_keys));
	FUNC0(FUNC3(&sk->sk_key_mappings));

	while ((wkey = FUNC2(&sk->sk_wkeys, &cookie)) != NULL)
		FUNC4(wkey);

	FUNC1(&sk->sk_wkeys);
	FUNC1(&sk->sk_key_mappings);
	FUNC1(&sk->sk_dsl_keys);
	FUNC5(&sk->sk_wkeys_lock);
	FUNC5(&sk->sk_km_lock);
	FUNC5(&sk->sk_dk_lock);
}