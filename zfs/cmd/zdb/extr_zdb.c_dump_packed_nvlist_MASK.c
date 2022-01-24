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
typedef  size_t uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMU_READ_PREFETCH ; 
 int /*<<< orphan*/  UMEM_NOFAIL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,size_t,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,size_t,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 char* FUNC5 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,size_t) ; 

__attribute__((used)) static void
FUNC7(objset_t *os, uint64_t object, void *data, size_t size)
{
	nvlist_t *nv;
	size_t nvsize = *(uint64_t *)data;
	char *packed = FUNC5(nvsize, UMEM_NOFAIL);

	FUNC0(0 == FUNC1(os, object, 0, nvsize, packed, DMU_READ_PREFETCH));

	FUNC0(FUNC4(packed, nvsize, &nv, 0) == 0);

	FUNC6(packed, nvsize);

	FUNC2(nv, 8);

	FUNC3(nv);
}