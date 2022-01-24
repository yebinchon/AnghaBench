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
struct TYPE_3__ {int /*<<< orphan*/  fp; } ;
typedef  TYPE_1__ BuildCtx ;

/* Variables and functions */
 char** bc_names ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 char** ir_names ; 
 char** ircall_names ; 
 scalar_t__* irfield_names ; 
 scalar_t__* irfpm_names ; 
 char* FUNC1 (char*,scalar_t__) ; 
 char* FUNC2 (char*,char) ; 
 char** trace_errors ; 

__attribute__((used)) static void FUNC3(BuildCtx *ctx)
{
  char buf[80];
  int i;
  FUNC0(ctx->fp, "-- This is a generated file. DO NOT EDIT!\n\n");
  FUNC0(ctx->fp, "return {\n\n");

  FUNC0(ctx->fp, "bcnames = \"");
  for (i = 0; bc_names[i]; i++) FUNC0(ctx->fp, "%-6s", bc_names[i]);
  FUNC0(ctx->fp, "\",\n\n");

  FUNC0(ctx->fp, "irnames = \"");
  for (i = 0; ir_names[i]; i++) FUNC0(ctx->fp, "%-6s", ir_names[i]);
  FUNC0(ctx->fp, "\",\n\n");

  FUNC0(ctx->fp, "irfpm = { [0]=");
  for (i = 0; irfpm_names[i]; i++)
    FUNC0(ctx->fp, "\"%s\", ", FUNC1(buf, irfpm_names[i]));
  FUNC0(ctx->fp, "},\n\n");

  FUNC0(ctx->fp, "irfield = { [0]=");
  for (i = 0; irfield_names[i]; i++) {
    char *p;
    FUNC1(buf, irfield_names[i]);
    p = FUNC2(buf, '_');
    if (p) *p = '.';
    FUNC0(ctx->fp, "\"%s\", ", buf);
  }
  FUNC0(ctx->fp, "},\n\n");

  FUNC0(ctx->fp, "ircall = {\n[0]=");
  for (i = 0; ircall_names[i]; i++)
    FUNC0(ctx->fp, "\"%s\",\n", ircall_names[i]);
  FUNC0(ctx->fp, "},\n\n");

  FUNC0(ctx->fp, "traceerr = {\n[0]=");
  for (i = 0; trace_errors[i]; i++)
    FUNC0(ctx->fp, "\"%s\",\n", trace_errors[i]);
  FUNC0(ctx->fp, "},\n\n");
}