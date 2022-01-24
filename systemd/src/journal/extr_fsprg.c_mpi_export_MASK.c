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
 scalar_t__ FUNC1 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,unsigned int,size_t*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (void*,size_t) ; 

__attribute__((used)) static void FUNC5(void *buf, size_t buflen, const gcry_mpi_t x) {
        unsigned len;
        size_t nwritten;

        FUNC0(FUNC1(x, 0) >= 0);
        len = (FUNC2(x) + 7) / 8;
        FUNC0(len <= buflen);
        FUNC4(buf, buflen);
        FUNC3(GCRYMPI_FMT_USG, buf + (buflen - len), len, &nwritten, x);
        FUNC0(nwritten == len);
}