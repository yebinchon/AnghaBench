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
typedef  int const uint_t ;
typedef  scalar_t__ bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  KM_NOSLEEP ; 
 scalar_t__ TRUE ; 
 int UINT_MAX ; 
 char* FUNC1 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int const) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int const*) ; 

__attribute__((used)) static bool_t
FUNC6(XDR *xdrs, char **sp, const uint_t maxsize)
{
	uint_t size;
	bool_t alloc = FALSE;

	if (!FUNC5(xdrs, &size))
		return (FALSE);

	if (size > maxsize || size > UINT_MAX - 1)
		return (FALSE);

	/*
	 * Solaris man page: "If *sp is NULL when decoding, xdr_string()
	 * allocates memory and *sp points to it".
	 */
	if (*sp == NULL) {
		FUNC0(sizeof (uint_t) > sizeof (size_t));

		*sp = FUNC1(size + 1, KM_NOSLEEP);
		if (*sp == NULL)
			return (FALSE);

		alloc = TRUE;
	}

	if (!FUNC4(xdrs, *sp, size))
		goto fail;

	if (FUNC3(*sp, 0, size) != NULL)
		goto fail;

	(*sp)[size] = '\0';

	return (TRUE);

fail:
	if (alloc)
		FUNC2(*sp, size + 1);

	return (FALSE);
}