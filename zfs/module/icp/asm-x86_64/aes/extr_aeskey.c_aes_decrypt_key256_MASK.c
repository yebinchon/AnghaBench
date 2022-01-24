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
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*,int) ; 
 size_t FUNC7 (int,int) ; 
 int FUNC8 (unsigned char const*,int) ; 

__attribute__((used)) static void
FUNC9(const unsigned char *key, uint32_t rk[])
{
	uint32_t	ss[9];
#if defined(d_vars)
	d_vars;
#endif
	rk[FUNC7(56, (0))] = ss[0] = FUNC8(key, 0);
	rk[FUNC7(56, (1))] = ss[1] = FUNC8(key, 1);
	rk[FUNC7(56, (2))] = ss[2] = FUNC8(key, 2);
	rk[FUNC7(56, (3))] = ss[3] = FUNC8(key, 3);

#ifdef DEC_KS_UNROLL
	ss[4] = word_in(key, 4);
	rk[v(56, (4))] = ff(ss[4]);
	ss[5] = word_in(key, 5);
	rk[v(56, (5))] = ff(ss[5]);
	ss[6] = word_in(key, 6);
	rk[v(56, (6))] = ff(ss[6]);
	ss[7] = word_in(key, 7);
	rk[v(56, (7))] = ff(ss[7]);
	kdf8(rk, 0); kd8(rk, 1);
	kd8(rk, 2);  kd8(rk, 3);
	kd8(rk, 4);  kd8(rk, 5);
	kdl8(rk, 6);
#else
	rk[FUNC7(56, (4))] = ss[4] = FUNC8(key, 4);
	rk[FUNC7(56, (5))] = ss[5] = FUNC8(key, 5);
	rk[FUNC7(56, (6))] = ss[6] = FUNC8(key, 6);
	rk[FUNC7(56, (7))] = ss[7] = FUNC8(key, 7);
	{
		uint32_t	i;

		for (i = 0; i < 6; ++i)
			FUNC2(rk,  i);
		FUNC3(rk,  6);
#if !(DEC_ROUND == NO_TABLES)
		for (i = MAX_AES_NB; i < 14 * MAX_AES_NB; ++i)
			rk[i] = inv_mcol(rk[i]);
#endif
	}
#endif	/* DEC_KS_UNROLL */
}