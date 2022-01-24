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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  size_t spa_feature_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int B_FALSE ; 
 int ENOTSUP ; 
 scalar_t__ SPA_VERSION_FEATURES ; 
 int FUNC1 (size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * spa_feature_table ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

boolean_t
FUNC4(spa_t *spa, spa_feature_t fid, uint64_t *txg)
{
	int err;

	FUNC0(FUNC1(fid));
	if (FUNC3(spa) < SPA_VERSION_FEATURES)
		return (B_FALSE);

	err = FUNC2(spa, &spa_feature_table[fid], txg);
	FUNC0(err == 0 || err == ENOTSUP);

	return (err == 0);
}