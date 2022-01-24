#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  zap_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

int
FUNC2(objset_t *os, uint64_t zapobj, const char *key,
    int integer_size, uint64_t num_integers,
    const void *val, dmu_tx_t *tx)
{
	zap_t *zap;
	int err;

	err = FUNC1(os, zapobj, tx, RW_WRITER, TRUE, TRUE, FTAG, &zap);
	if (err != 0)
		return (err);
	err = FUNC0(zap, key, integer_size, num_integers, val, tx, FTAG);
	/* zap_add_impl() calls zap_unlockdir() */
	return (err);
}