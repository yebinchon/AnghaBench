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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  EFAULT ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (void*,char*,scalar_t__,int) ; 
 int FUNC2 (char*,scalar_t__,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 char* FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 

__attribute__((used)) static int
FUNC5(uint64_t nvl, uint64_t size, int iflag, nvlist_t **nvp)
{
	char *packed;
	int error;
	nvlist_t *list = NULL;

	/*
	 * Read in and unpack the user-supplied nvlist.
	 */
	if (size == 0)
		return (FUNC0(EINVAL));

	packed = FUNC3(size, KM_SLEEP);

	if ((error = FUNC1((void *)(uintptr_t)nvl, packed, size,
	    iflag)) != 0) {
		FUNC4(packed, size);
		return (FUNC0(EFAULT));
	}

	if ((error = FUNC2(packed, size, &list, 0)) != 0) {
		FUNC4(packed, size);
		return (error);
	}

	FUNC4(packed, size);

	*nvp = list;
	return (0);
}