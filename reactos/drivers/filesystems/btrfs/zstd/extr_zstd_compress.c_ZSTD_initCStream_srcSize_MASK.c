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
struct TYPE_4__ {int /*<<< orphan*/  requestedParams; } ;
typedef  TYPE_1__ ZSTD_CStream ;
typedef  unsigned long long U64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 unsigned long long ZSTD_CONTENTSIZE_UNKNOWN ; 
 size_t FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long long const) ; 

size_t FUNC2(ZSTD_CStream* zcs, int compressionLevel, unsigned long long pss)
{
    U64 const pledgedSrcSize = (pss==0) ? ZSTD_CONTENTSIZE_UNKNOWN : pss;  /* temporary : 0 interpreted as "unknown" during transition period. Users willing to specify "unknown" **must** use ZSTD_CONTENTSIZE_UNKNOWN. `0` will be interpreted as "empty" in the future */
    FUNC0(&zcs->requestedParams, compressionLevel);
    return FUNC1(zcs, NULL, 0, NULL, zcs->requestedParams, pledgedSrcSize);
}