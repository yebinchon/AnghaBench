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
typedef  int /*<<< orphan*/  zfsvfs_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  DMU_OST_ZFS ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC6(const char *osname, boolean_t readonly, zfsvfs_t **zfvp)
{
	objset_t *os;
	zfsvfs_t *zfsvfs;
	int error;
	boolean_t ro = (readonly || (FUNC4(osname, '@') != NULL));

	zfsvfs = FUNC3(sizeof (zfsvfs_t), KM_SLEEP);

	error = FUNC1(osname, DMU_OST_ZFS, ro, B_TRUE, zfsvfs, &os);
	if (error != 0) {
		FUNC2(zfsvfs, sizeof (zfsvfs_t));
		return (error);
	}

	error = FUNC5(zfvp, zfsvfs, os);
	if (error != 0) {
		FUNC0(os, B_TRUE, zfsvfs);
	}
	return (error);
}