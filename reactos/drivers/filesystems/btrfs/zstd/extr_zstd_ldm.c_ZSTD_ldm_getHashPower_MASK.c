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
typedef  int /*<<< orphan*/  U64 ;
typedef  scalar_t__ U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__) ; 
 scalar_t__ ZSTD_LDM_MINMATCH_MIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  prime8bytes ; 

U64 FUNC3(U32 minMatchLength) {
    FUNC0(4, "ZSTD_ldm_getHashPower: mml=%u", minMatchLength);
    FUNC2(minMatchLength >= ZSTD_LDM_MINMATCH_MIN);
    return FUNC1(prime8bytes, minMatchLength - 1);
}