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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SCMP_ARCH_AARCH64 ; 
 int /*<<< orphan*/  SCMP_ARCH_ARM ; 
 int /*<<< orphan*/  SCMP_ARCH_MIPS ; 
 int /*<<< orphan*/  SCMP_ARCH_MIPS64 ; 
 int /*<<< orphan*/  SCMP_ARCH_MIPS64N32 ; 
 int /*<<< orphan*/  SCMP_ARCH_MIPSEL ; 
 int /*<<< orphan*/  SCMP_ARCH_MIPSEL64 ; 
 int /*<<< orphan*/  SCMP_ARCH_MIPSEL64N32 ; 
 int /*<<< orphan*/  SCMP_ARCH_NATIVE ; 
 int /*<<< orphan*/  SCMP_ARCH_PPC ; 
 int /*<<< orphan*/  SCMP_ARCH_PPC64 ; 
 int /*<<< orphan*/  SCMP_ARCH_PPC64LE ; 
 int /*<<< orphan*/  SCMP_ARCH_S390 ; 
 int /*<<< orphan*/  SCMP_ARCH_S390X ; 
 int /*<<< orphan*/  SCMP_ARCH_X32 ; 
 int /*<<< orphan*/  SCMP_ARCH_X86 ; 
 int /*<<< orphan*/  SCMP_ARCH_X86_64 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

int FUNC2(const char *n, uint32_t *ret) {
        if (!n)
                return -EINVAL;

        FUNC0(ret);

        if (FUNC1(n, "native"))
                *ret = SCMP_ARCH_NATIVE;
        else if (FUNC1(n, "x86"))
                *ret = SCMP_ARCH_X86;
        else if (FUNC1(n, "x86-64"))
                *ret = SCMP_ARCH_X86_64;
        else if (FUNC1(n, "x32"))
                *ret = SCMP_ARCH_X32;
        else if (FUNC1(n, "arm"))
                *ret = SCMP_ARCH_ARM;
        else if (FUNC1(n, "arm64"))
                *ret = SCMP_ARCH_AARCH64;
        else if (FUNC1(n, "mips"))
                *ret = SCMP_ARCH_MIPS;
        else if (FUNC1(n, "mips64"))
                *ret = SCMP_ARCH_MIPS64;
        else if (FUNC1(n, "mips64-n32"))
                *ret = SCMP_ARCH_MIPS64N32;
        else if (FUNC1(n, "mips-le"))
                *ret = SCMP_ARCH_MIPSEL;
        else if (FUNC1(n, "mips64-le"))
                *ret = SCMP_ARCH_MIPSEL64;
        else if (FUNC1(n, "mips64-le-n32"))
                *ret = SCMP_ARCH_MIPSEL64N32;
        else if (FUNC1(n, "ppc"))
                *ret = SCMP_ARCH_PPC;
        else if (FUNC1(n, "ppc64"))
                *ret = SCMP_ARCH_PPC64;
        else if (FUNC1(n, "ppc64-le"))
                *ret = SCMP_ARCH_PPC64LE;
        else if (FUNC1(n, "s390"))
                *ret = SCMP_ARCH_S390;
        else if (FUNC1(n, "s390x"))
                *ret = SCMP_ARCH_S390X;
        else
                return -EINVAL;

        return 0;
}