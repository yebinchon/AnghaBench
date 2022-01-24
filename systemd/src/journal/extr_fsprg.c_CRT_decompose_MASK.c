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
typedef  int /*<<< orphan*/  gcry_mpi_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(gcry_mpi_t *xp, gcry_mpi_t *xq, const gcry_mpi_t x, const gcry_mpi_t p, const gcry_mpi_t q) {
        *xp = FUNC1(0);
        *xq = FUNC1(0);
        FUNC0(*xp, x, p);
        FUNC0(*xq, x, q);
}