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
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FTAG ; 
 scalar_t__ SPA_VERSION_FEATURES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,int) ; 
 int FUNC1 (char*,int /*<<< orphan*/ **,void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  zfeature_checks_disable ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(char *target, boolean_t readonly, void *tag, spa_t **spa)
{
	int err;

	FUNC4(target, readonly);

	zfeature_checks_disable = B_TRUE;
	err = FUNC1(target, spa, tag);
	zfeature_checks_disable = B_FALSE;

	if (err != 0)
		FUNC0(*spa, FTAG, "cannot open '%s': %s", target,
		    FUNC3(err));
	if (FUNC2(*spa) < SPA_VERSION_FEATURES) {
		FUNC0(*spa, FTAG, "'%s' has version %d, features not enabled",
		    target, (int)FUNC2(*spa));
	}
}