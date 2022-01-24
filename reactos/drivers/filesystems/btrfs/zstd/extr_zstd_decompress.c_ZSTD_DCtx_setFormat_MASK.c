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
typedef  scalar_t__ ZSTD_format_e ;
struct TYPE_3__ {scalar_t__ streamStage; scalar_t__ format; } ;
typedef  TYPE_1__ ZSTD_DCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stage_wrong ; 
 scalar_t__ zdss_init ; 

size_t FUNC2(ZSTD_DCtx* dctx, ZSTD_format_e format)
{
    FUNC0(4, "ZSTD_DCtx_setFormat : %u", (unsigned)format);
    if (dctx->streamStage != zdss_init) return FUNC1(stage_wrong);
    dctx->format = format;
    return 0;
}