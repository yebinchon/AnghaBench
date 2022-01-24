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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  gcry_mpi_t ;

/* Variables and functions */
 int FSPRG_RECOMMENDED_SEEDLEN ; 
 int /*<<< orphan*/  GCRY_STRONG_RANDOM ; 
 int /*<<< orphan*/  RND_GEN_P ; 
 int /*<<< orphan*/  RND_GEN_Q ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,void const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*,int) ; 

void FUNC11(void *msk, void *mpk, const void *seed, size_t seedlen, unsigned _secpar) {
        uint8_t iseed[FSPRG_RECOMMENDED_SEEDLEN];
        gcry_mpi_t n, p, q;
        uint16_t secpar;

        FUNC0(_secpar);
        secpar = _secpar;

        FUNC8(false);

        if (!seed) {
                FUNC6(iseed, FSPRG_RECOMMENDED_SEEDLEN, GCRY_STRONG_RANDOM);
                seed = iseed;
                seedlen = FSPRG_RECOMMENDED_SEEDLEN;
        }

        p = FUNC7(secpar / 2, seed, seedlen, RND_GEN_P);
        q = FUNC7(secpar / 2, seed, seedlen, RND_GEN_Q);

        if (msk) {
                FUNC10(msk + 0, secpar);
                FUNC9(msk + 2 + 0 * (secpar / 2) / 8, (secpar / 2) / 8, p);
                FUNC9(msk + 2 + 1 * (secpar / 2) / 8, (secpar / 2) / 8, q);
        }

        if (mpk) {
                n = FUNC4(0);
                FUNC3(n, p, q);
                FUNC1(FUNC2(n) == secpar);

                FUNC10(mpk + 0, secpar);
                FUNC9(mpk + 2, secpar / 8, n);

                FUNC5(n);
        }

        FUNC5(p);
        FUNC5(q);
}