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
struct TYPE_3__ {int npc; int* bc_ofs; int /*<<< orphan*/  fp; } ;
typedef  TYPE_1__ BuildCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC1(BuildCtx *ctx)
{
  int i;
  FUNC0(ctx->fp, "/* This is a generated file. DO NOT EDIT! */\n\n");
  FUNC0(ctx->fp, "LJ_DATADEF const uint16_t lj_bc_ofs[] = {\n");
  for (i = 0; i < ctx->npc; i++) {
    if (i != 0)
      FUNC0(ctx->fp, ",\n");
    FUNC0(ctx->fp, "%d", ctx->bc_ofs[i]);
  }
}