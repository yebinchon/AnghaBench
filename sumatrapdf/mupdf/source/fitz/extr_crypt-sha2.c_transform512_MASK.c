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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * SHA512_K ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC12(uint64_t state[8], uint64_t data[16])
{
	const uint64_t *K = SHA512_K;
	uint64_t W[16];
	uint64_t T[8];
	unsigned int j;

	/* ensure big-endian integers */
	if (!FUNC10())
		for (j = 0; j < 16; j++)
			data[j] = FUNC3(data[j]);

	/* Copy state[] to working vars. */
	FUNC11(T, state, sizeof(T));

	/* 80 operations, partially loop unrolled */
	for (j = 0; j < 80; j+= 16) {
		FUNC0( 0); FUNC0( 1); FUNC0( 2); FUNC0( 3);
		FUNC0( 4); FUNC0( 5); FUNC0( 6); FUNC0( 7);
		FUNC0( 8); FUNC0( 9); FUNC0(10); FUNC0(11);
		FUNC0(12); FUNC0(13); FUNC0(14); FUNC0(15);
	}

	/* Add the working vars back into state[]. */
	state[0] += FUNC1(0);
	state[1] += FUNC2(0);
	state[2] += FUNC4(0);
	state[3] += FUNC5(0);
	state[4] += FUNC6(0);
	state[5] += FUNC7(0);
	state[6] += FUNC8(0);
	state[7] += FUNC9(0);
}