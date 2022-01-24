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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static bool_t
FUNC2(XDR *xdrs, unsigned short *usp)
{
	uint32_t val;

	FUNC0(sizeof (unsigned short) != 2);

	if (!FUNC1(xdrs, &val))
		return (FALSE);

	/*
	 * Short ints are not in the RFC, but we assume similar logic as in
	 * xdrmem_dec_char().
	 */
	if (val > 0xffff)
		return (FALSE);

	*usp = val;

	return (TRUE);
}