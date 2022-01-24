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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  gcry_mpi_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,size_t,void const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,size_t) ; 

__attribute__((used)) static gcry_mpi_t FUNC5(int bits, const void *seed, size_t seedlen, uint32_t idx) {
        size_t buflen = bits / 8;
        uint8_t buf[buflen];
        gcry_mpi_t p;

        FUNC0(bits % 8 == 0);
        FUNC0(buflen > 0);

        FUNC1(buf, buflen, seed, seedlen, idx);
        buf[0] |= 0xc0; /* set upper two bits, so that n=pq has maximum size */
        buf[buflen - 1] |= 0x03; /* set lower two bits, to have result 3 (mod 4) */

        p = FUNC4(buf, buflen);
        while (FUNC3(p, 0))
                FUNC2(p, p, 4);

        return p;
}