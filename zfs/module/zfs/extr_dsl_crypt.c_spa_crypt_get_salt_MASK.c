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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_4__ {int /*<<< orphan*/  dck_key; } ;
typedef  TYPE_1__ dsl_crypto_key_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC3(spa_t *spa, uint64_t dsobj, uint8_t *salt)
{
	int ret;
	dsl_crypto_key_t *dck = NULL;

	/* look up the key from the spa's keystore */
	ret = FUNC1(spa, dsobj, FTAG, &dck);
	if (ret != 0)
		goto error;

	ret = FUNC2(&dck->dck_key, salt);
	if (ret != 0)
		goto error;

	FUNC0(spa, dck, FTAG);
	return (0);

error:
	if (dck != NULL)
		FUNC0(spa, dck, FTAG);
	return (ret);
}