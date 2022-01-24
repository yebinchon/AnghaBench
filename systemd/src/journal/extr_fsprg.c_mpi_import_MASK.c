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
 int /*<<< orphan*/  GCRYMPI_FMT_USG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void const*,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static gcry_mpi_t FUNC5(const void *buf, size_t buflen) {
        gcry_mpi_t h;
        unsigned len;

        FUNC1(FUNC4(&h, GCRYMPI_FMT_USG, buf, buflen, NULL) == 0);
        len = (FUNC3(h) + 7) / 8;
        FUNC0(len <= buflen);
        FUNC0(FUNC2(h, 0) >= 0);

        return h;
}