#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  noDictIDFlag; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ ZSTD_frameParameters ;
typedef  int /*<<< orphan*/  ZSTD_CDict ;
typedef  int /*<<< orphan*/  ZSTD_CCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  ZSTD_CONTENTSIZE_UNKNOWN ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_1__ const,int /*<<< orphan*/ ) ; 

size_t FUNC2(ZSTD_CCtx* cctx, const ZSTD_CDict* cdict)
{
    ZSTD_frameParameters const fParams = { 0 /*content*/, 0 /*checksum*/, 0 /*noDictID*/ };
    FUNC0(4, "ZSTD_compressBegin_usingCDict : dictIDFlag == %u", !fParams.noDictIDFlag);
    return FUNC1(cctx, cdict, fParams, ZSTD_CONTENTSIZE_UNKNOWN);
}