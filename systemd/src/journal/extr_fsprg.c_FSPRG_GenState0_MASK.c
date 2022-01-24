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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  gcry_mpi_t ;

/* Variables and functions */
 int /*<<< orphan*/  RND_GEN_X ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void const*,size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (void*,void const*,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int) ; 
 int /*<<< orphan*/  FUNC5 (void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void const*,int) ; 
 int FUNC7 (void const*) ; 

void FUNC8(void *state, const void *mpk, const void *seed, size_t seedlen) {
        gcry_mpi_t n, x;
        uint16_t secpar;

        FUNC2(false);

        secpar = FUNC7(mpk + 0);
        n = FUNC6(mpk + 2, secpar / 8);
        x = FUNC1(n, seed, seedlen, RND_GEN_X, secpar);

        FUNC3(state, mpk, 2 + secpar / 8);
        FUNC5(state + 2 + 1 * secpar / 8, secpar / 8, x);
        FUNC4(state + 2 + 2 * secpar / 8, 8);

        FUNC0(n);
        FUNC0(x);
}