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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  gcry_mpi_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RND_GEN_X ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void const*,size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void const*,int) ; 
 int FUNC10 (void const*) ; 
 int /*<<< orphan*/  FUNC11 (void*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (void*,int,int /*<<< orphan*/ ) ; 

void FUNC14(void *state, uint64_t epoch, const void *msk, const void *seed, size_t seedlen) {
        gcry_mpi_t p, q, n, x, xp, xq, kp, kq, xm;
        uint16_t secpar;

        FUNC7(false);

        secpar = FUNC10(msk + 0);
        p  = FUNC9(msk + 2 + 0 * (secpar / 2) / 8, (secpar / 2) / 8);
        q  = FUNC9(msk + 2 + 1 * (secpar / 2) / 8, (secpar / 2) / 8);

        n = FUNC3(0);
        FUNC2(n, p, q);

        x = FUNC6(n, seed, seedlen, RND_GEN_X, secpar);
        FUNC1(&xp, &xq, x, p, q); /* split (mod n) into (mod p) and (mod q) using CRT */

        kp = FUNC12(epoch, p); /* compute 2^epoch (mod phi(p)) */
        kq = FUNC12(epoch, q); /* compute 2^epoch (mod phi(q)) */

        FUNC4(xp, xp, kp, p); /* compute x^(2^epoch) (mod p) */
        FUNC4(xq, xq, kq, q); /* compute x^(2^epoch) (mod q) */

        FUNC0(&xm, xp, xq, p, q); /* combine (mod p) and (mod q) to (mod n) using CRT */

        FUNC11(state + 0, secpar);
        FUNC8(state + 2 + 0 * secpar / 8, secpar / 8, n);
        FUNC8(state + 2 + 1 * secpar / 8, secpar / 8, xm);
        FUNC13(state + 2 + 2 * secpar / 8, 8, epoch);

        FUNC5(p);
        FUNC5(q);
        FUNC5(n);
        FUNC5(x);
        FUNC5(xp);
        FUNC5(xq);
        FUNC5(kp);
        FUNC5(kq);
        FUNC5(xm);
}