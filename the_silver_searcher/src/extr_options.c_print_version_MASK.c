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

/* Variables and functions */
 char* PACKAGE_VERSION ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void FUNC1(void) {
    char jit = '-';
    char lzma = '-';
    char zlib = '-';

#ifdef USE_PCRE_JIT
    jit = '+';
#endif
#ifdef HAVE_LZMA_H
    lzma = '+';
#endif
#ifdef HAVE_ZLIB_H
    zlib = '+';
#endif

    FUNC0("ag version %s\n\n", PACKAGE_VERSION);
    FUNC0("Features:\n");
    FUNC0("  %cjit %clzma %czlib\n", jit, lzma, zlib);
}