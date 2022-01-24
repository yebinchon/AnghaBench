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
typedef  unsigned long long uint64_t ;
typedef  int /*<<< orphan*/  gcry_mpi_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/  const,int) ; 

__attribute__((used)) static gcry_mpi_t FUNC8(uint64_t m, const gcry_mpi_t p) {
        gcry_mpi_t phi, r;
        int n;

        phi = FUNC3(0);
        FUNC7(phi, p, 1);

        /* count number of used bits in m */
        for (n = 0; (1ULL << n) <= m; n++)
                ;

        r = FUNC3(0);
        FUNC5(r, 1);
        while (n) { /* square and multiply algorithm for fast exponentiation */
                n--;
                FUNC2(r, r, r, phi);
                if (m & ((uint64_t)1 << n)) {
                        FUNC0(r, r, r);
                        if (FUNC1(r, phi) >= 0)
                                FUNC6(r, r, phi);
                }
        }

        FUNC4(phi);
        return r;
}