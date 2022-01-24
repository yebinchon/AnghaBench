#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ contentSizeFlag; } ;
struct TYPE_11__ {int /*<<< orphan*/  cParams; TYPE_1__ fParams; } ;
typedef  TYPE_2__ ZSTD_parameters ;
struct TYPE_12__ {int /*<<< orphan*/  requestedParams; } ;
typedef  TYPE_3__ ZSTD_CStream ;
typedef  unsigned long long U64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,unsigned long long const) ; 
 unsigned long long ZSTD_CONTENTSIZE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZSTD_reset_session_only ; 

size_t FUNC7(ZSTD_CStream* zcs,
                                 const void* dict, size_t dictSize,
                                 ZSTD_parameters params, unsigned long long pss)
{
    /* for compatibility with older programs relying on this behavior.
     * Users should now specify ZSTD_CONTENTSIZE_UNKNOWN.
     * This line will be removed in the future.
     */
    U64 const pledgedSrcSize = (pss==0 && params.fParams.contentSizeFlag==0) ? ZSTD_CONTENTSIZE_UNKNOWN : pss;
    FUNC0(4, "ZSTD_initCStream_advanced");
    FUNC1( FUNC3(zcs, ZSTD_reset_session_only) );
    FUNC1( FUNC4(zcs, pledgedSrcSize) );
    FUNC1( FUNC6(params.cParams) );
    zcs->requestedParams = FUNC5(&zcs->requestedParams, &params);
    FUNC1( FUNC2(zcs, dict, dictSize) );
    return 0;
}