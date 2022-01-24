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
struct spu_prerender_ctx_s {int /*<<< orphan*/  cleanuplock; int /*<<< orphan*/ ** pp_processed; int /*<<< orphan*/  fmtsrc; int /*<<< orphan*/  fmtdst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *priv)
{
    struct spu_prerender_ctx_s *ctx = priv;
    FUNC0(&ctx->fmtdst);
    FUNC0(&ctx->fmtsrc);
    *ctx->pp_processed = NULL;
    FUNC1(ctx->cleanuplock);
}