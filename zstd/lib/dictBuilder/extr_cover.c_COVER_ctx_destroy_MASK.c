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
struct TYPE_3__ {int /*<<< orphan*/ * offsets; int /*<<< orphan*/ * dmerAt; int /*<<< orphan*/ * freqs; int /*<<< orphan*/ * suffix; } ;
typedef  TYPE_1__ COVER_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(COVER_ctx_t *ctx) {
  if (!ctx) {
    return;
  }
  if (ctx->suffix) {
    FUNC0(ctx->suffix);
    ctx->suffix = NULL;
  }
  if (ctx->freqs) {
    FUNC0(ctx->freqs);
    ctx->freqs = NULL;
  }
  if (ctx->dmerAt) {
    FUNC0(ctx->dmerAt);
    ctx->dmerAt = NULL;
  }
  if (ctx->offsets) {
    FUNC0(ctx->offsets);
    ctx->offsets = NULL;
  }
}