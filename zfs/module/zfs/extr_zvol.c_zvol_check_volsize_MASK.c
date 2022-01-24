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
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EOVERFLOW ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int SPEC_MAXOFFSET_T ; 

int
FUNC1(uint64_t volsize, uint64_t blocksize)
{
	if (volsize == 0)
		return (FUNC0(EINVAL));

	if (volsize % blocksize != 0)
		return (FUNC0(EINVAL));

#ifdef _ILP32
	if (volsize - 1 > SPEC_MAXOFFSET_T)
		return (SET_ERROR(EOVERFLOW));
#endif
	return (0);
}