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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int FUNC2 (unsigned char const*,int) ; 

__attribute__((used)) static void
FUNC3(const unsigned char *key, uint32_t rk[])
{
	uint32_t	ss[6];

	rk[0] = ss[0] = FUNC2(key, 0);
	rk[1] = ss[1] = FUNC2(key, 1);
	rk[2] = ss[2] = FUNC2(key, 2);
	rk[3] = ss[3] = FUNC2(key, 3);
	rk[4] = ss[4] = FUNC2(key, 4);
	rk[5] = ss[5] = FUNC2(key, 5);

#ifdef ENC_KS_UNROLL
	ke6(rk, 0);  ke6(rk, 1);
	ke6(rk, 2);  ke6(rk, 3);
	ke6(rk, 4);  ke6(rk, 5);
	ke6(rk, 6);
#else
	{
		uint32_t	i;
		for (i = 0; i < 7; ++i)
			FUNC0(rk, i);
	}
#endif	/* ENC_KS_UNROLL */
	FUNC1(rk, 7);
}