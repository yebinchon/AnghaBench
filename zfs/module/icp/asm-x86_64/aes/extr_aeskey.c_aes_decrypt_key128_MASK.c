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
 int MAX_AES_NB ; 
 int /*<<< orphan*/  d_vars ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int) ; 
 size_t FUNC5 (int,int) ; 
 int FUNC6 (unsigned char const*,int) ; 

__attribute__((used)) static void
FUNC7(const unsigned char *key, uint32_t rk[])
{
	uint32_t	ss[5];
#if defined(d_vars)
	d_vars;
#endif
	rk[FUNC5(40, (0))] = ss[0] = FUNC6(key, 0);
	rk[FUNC5(40, (1))] = ss[1] = FUNC6(key, 1);
	rk[FUNC5(40, (2))] = ss[2] = FUNC6(key, 2);
	rk[FUNC5(40, (3))] = ss[3] = FUNC6(key, 3);

#ifdef DEC_KS_UNROLL
	kdf4(rk, 0); kd4(rk, 1);
	kd4(rk, 2);  kd4(rk, 3);
	kd4(rk, 4);  kd4(rk, 5);
	kd4(rk, 6);  kd4(rk, 7);
	kd4(rk, 8);  kdl4(rk, 9);
#else
	{
		uint32_t	i;
		for (i = 0; i < 10; ++i)
			FUNC1(rk, i);
#if !(DEC_ROUND == NO_TABLES)
		for (i = MAX_AES_NB; i < 10 * MAX_AES_NB; ++i)
			rk[i] = inv_mcol(rk[i]);
#endif
	}
#endif	/* DEC_KS_UNROLL */
}