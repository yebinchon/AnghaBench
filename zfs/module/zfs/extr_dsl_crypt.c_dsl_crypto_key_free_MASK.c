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
struct TYPE_5__ {scalar_t__ dck_wkey; int /*<<< orphan*/  dck_holds; int /*<<< orphan*/  dck_key; } ;
typedef  TYPE_1__ dsl_crypto_key_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(dsl_crypto_key_t *dck)
{
	FUNC0(FUNC3(&dck->dck_holds) == 0);

	/* destroy the zio_crypt_key_t */
	FUNC5(&dck->dck_key);

	/* free the refcount, wrapping key, and lock */
	FUNC4(&dck->dck_holds);
	if (dck->dck_wkey)
		FUNC1(dck->dck_wkey, dck);

	/* free the key */
	FUNC2(dck, sizeof (dsl_crypto_key_t));
}