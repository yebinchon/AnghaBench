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
typedef  int /*<<< orphan*/  ZSTD_CStream ;
typedef  unsigned long long U64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long long const) ; 
 unsigned long long ZSTD_CONTENTSIZE_UNKNOWN ; 
 int /*<<< orphan*/  ZSTD_c_compressionLevel ; 
 int /*<<< orphan*/  ZSTD_reset_session_only ; 

size_t FUNC6(ZSTD_CStream* zcs, int compressionLevel, unsigned long long pss)
{
    /* temporary : 0 interpreted as "unknown" during transition period.
     * Users willing to specify "unknown" **must** use ZSTD_CONTENTSIZE_UNKNOWN.
     * 0 will be interpreted as "empty" in the future.
     */
    U64 const pledgedSrcSize = (pss==0) ? ZSTD_CONTENTSIZE_UNKNOWN : pss;
    FUNC0(4, "ZSTD_initCStream_srcSize");
    FUNC1( FUNC3(zcs, ZSTD_reset_session_only) );
    FUNC1( FUNC2(zcs, NULL) );
    FUNC1( FUNC4(zcs, ZSTD_c_compressionLevel, compressionLevel) );
    FUNC1( FUNC5(zcs, pledgedSrcSize) );
    return 0;
}