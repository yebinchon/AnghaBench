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
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  dnode_t ;
typedef  int /*<<< orphan*/  dmu_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMU_READ_NO_PREFETCH ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC3(objset_t *os, uint64_t object, void *tag, dmu_buf_t **dbp)
{
	dnode_t *dn;
	int error;

	error = FUNC1(os, object, FTAG, &dn);
	if (error)
		return (error);

	error = FUNC0(dn, tag, dbp, DMU_READ_NO_PREFETCH);
	FUNC2(dn, FTAG);

	return (error);
}