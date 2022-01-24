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
typedef  int /*<<< orphan*/  nvpriv_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  nv_alloc_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NVS_OP_ENCODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,size_t) ; 
 char* FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,size_t*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,size_t*,int) ; 

int
FUNC5(nvlist_t *nvl, char **bufp, size_t *buflen, int encoding,
    nv_alloc_t *nva)
{
	nvpriv_t nvpriv;
	size_t alloc_size;
	char *buf;
	int err;

	if (nva == NULL || nvl == NULL || bufp == NULL || buflen == NULL)
		return (EINVAL);

	if (*bufp != NULL)
		return (FUNC3(nvl, *bufp, buflen, encoding,
		    NVS_OP_ENCODE));

	/*
	 * Here is a difficult situation:
	 * 1. The nvlist has fixed allocator properties.
	 *    All other nvlist routines (like nvlist_add_*, ...) use
	 *    these properties.
	 * 2. When using nvlist_pack() the user can specify their own
	 *    allocator properties (e.g. by using KM_NOSLEEP).
	 *
	 * We use the user specified properties (2). A clearer solution
	 * will be to remove the kmflag from nvlist_pack(), but we will
	 * not change the interface.
	 */
	FUNC2(&nvpriv, nva, 0);

	if ((err = FUNC4(nvl, &alloc_size, encoding)))
		return (err);

	if ((buf = FUNC1(&nvpriv, alloc_size)) == NULL)
		return (ENOMEM);

	if ((err = FUNC3(nvl, buf, &alloc_size, encoding,
	    NVS_OP_ENCODE)) != 0) {
		FUNC0(&nvpriv, buf, alloc_size);
	} else {
		*buflen = alloc_size;
		*bufp = buf;
	}

	return (err);
}