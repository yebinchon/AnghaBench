#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ contentSizeFlag; } ;
struct TYPE_9__ {TYPE_1__ fParams; int /*<<< orphan*/  cParams; } ;
typedef  TYPE_2__ ZSTD_parameters ;
struct TYPE_10__ {int /*<<< orphan*/  requestedParams; } ;
typedef  TYPE_3__ ZSTD_CStream ;
typedef  int /*<<< orphan*/  U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 unsigned long long ZSTD_CONTENTSIZE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (TYPE_3__*,void const*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long long) ; 

size_t FUNC5(ZSTD_CStream* zcs,
                                 const void* dict, size_t dictSize,
                                 ZSTD_parameters params, unsigned long long pledgedSrcSize)
{
    FUNC1(4, "ZSTD_initCStream_advanced: pledgedSrcSize=%u, flag=%u",
                (U32)pledgedSrcSize, params.fParams.contentSizeFlag);
    FUNC0( FUNC3(params.cParams) );
    if ((pledgedSrcSize==0) && (params.fParams.contentSizeFlag==0)) pledgedSrcSize = ZSTD_CONTENTSIZE_UNKNOWN;  /* for compatibility with older programs relying on this behavior. Users should now specify ZSTD_CONTENTSIZE_UNKNOWN. This line will be removed in the future. */
    zcs->requestedParams = FUNC2(zcs->requestedParams, params);
    return FUNC4(zcs, dict, dictSize, NULL /*cdict*/, zcs->requestedParams, pledgedSrcSize);
}