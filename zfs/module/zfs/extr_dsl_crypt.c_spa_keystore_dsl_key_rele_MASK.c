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
struct TYPE_8__ {int /*<<< orphan*/  sk_dk_lock; int /*<<< orphan*/  sk_dsl_keys; } ;
struct TYPE_9__ {TYPE_1__ spa_keystore; } ;
typedef  TYPE_2__ spa_t ;
struct TYPE_10__ {int /*<<< orphan*/  dck_holds; } ;
typedef  TYPE_3__ dsl_crypto_key_t ;

/* Variables and functions */
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,void*) ; 

void
FUNC5(spa_t *spa, dsl_crypto_key_t *dck, void *tag)
{
	FUNC2(&spa->spa_keystore.sk_dk_lock, RW_WRITER);

	if (FUNC4(&dck->dck_holds, tag) == 0) {
		FUNC0(&spa->spa_keystore.sk_dsl_keys, dck);
		FUNC1(dck);
	}

	FUNC3(&spa->spa_keystore.sk_dk_lock);
}