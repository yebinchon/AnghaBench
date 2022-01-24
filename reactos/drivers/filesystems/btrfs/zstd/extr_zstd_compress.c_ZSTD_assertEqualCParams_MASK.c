#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ windowLog; scalar_t__ chainLog; scalar_t__ hashLog; scalar_t__ searchLog; scalar_t__ searchLength; scalar_t__ targetLength; scalar_t__ strategy; } ;
typedef  TYPE_1__ ZSTD_compressionParameters ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(ZSTD_compressionParameters cParams1,
                                    ZSTD_compressionParameters cParams2)
{
    (void)cParams1;
    (void)cParams2;
    FUNC0(cParams1.windowLog    == cParams2.windowLog);
    FUNC0(cParams1.chainLog     == cParams2.chainLog);
    FUNC0(cParams1.hashLog      == cParams2.hashLog);
    FUNC0(cParams1.searchLog    == cParams2.searchLog);
    FUNC0(cParams1.searchLength == cParams2.searchLength);
    FUNC0(cParams1.targetLength == cParams2.targetLength);
    FUNC0(cParams1.strategy     == cParams2.strategy);
}