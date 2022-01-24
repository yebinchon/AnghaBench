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
typedef  int /*<<< orphan*/  ZSTD_CDict ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZSTD_reset_session_only ; 

size_t FUNC4(ZSTD_CStream* zcs, const ZSTD_CDict* cdict)
{
    FUNC0(4, "ZSTD_initCStream_usingCDict");
    FUNC1( FUNC3(zcs, ZSTD_reset_session_only) );
    FUNC1( FUNC2(zcs, cdict) );
    return 0;
}