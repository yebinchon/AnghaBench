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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (size_t,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spl_pseudo_entropy ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(uint8_t *ptr, size_t len)
{
	uint64_t *xp, s[2];

	FUNC0(ptr);

	xp = FUNC2(spl_pseudo_entropy);

	s[0] = xp[0];
	s[1] = xp[1];

	while (len) {
		union {
			uint64_t ui64;
			uint8_t byte[sizeof (uint64_t)];
		}entropy;
		int i = FUNC1(len, sizeof (uint64_t));

		len -= i;
		entropy.ui64 = FUNC4(s);

		while (i--)
			*ptr++ = entropy.byte[i];
	}

	xp[0] = s[0];
	xp[1] = s[1];

	FUNC3(spl_pseudo_entropy);

	return (0);
}