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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int) ; 
 int FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,int) ; 

void FUNC8(void *state) {
        gcry_mpi_t n, x;
        uint16_t secpar;
        uint64_t epoch;

        FUNC2(false);

        secpar = FUNC5(state + 0);
        n = FUNC4(state + 2 + 0 * secpar / 8, secpar / 8);
        x = FUNC4(state + 2 + 1 * secpar / 8, secpar / 8);
        epoch = FUNC7(state + 2 + 2 * secpar / 8, 8);

        FUNC0(x, x, x, n);
        epoch++;

        FUNC3(state + 2 + 1 * secpar / 8, secpar / 8, x);
        FUNC6(state + 2 + 2 * secpar / 8, 8, epoch);

        FUNC1(n);
        FUNC1(x);
}