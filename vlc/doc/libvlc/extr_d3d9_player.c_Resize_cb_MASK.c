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
struct render_context {void (* ReportSize ) (void*,unsigned int,unsigned int) ;void* ReportOpaque; unsigned int width; unsigned int height; int /*<<< orphan*/  sizeLock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void FUNC2 (void*,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC3( void *opaque,
                       void (*report_size_change)(void *report_opaque, unsigned width, unsigned height),
                       void *report_opaque )
{
    struct render_context *ctx = opaque;
    FUNC0(&ctx->sizeLock);
    ctx->ReportSize = report_size_change;
    ctx->ReportOpaque = report_opaque;

    if (ctx->ReportSize != NULL)
    {
        /* report our initial size */
        ctx->ReportSize(ctx->ReportOpaque, ctx->width, ctx->height);
    }
    FUNC1(&ctx->sizeLock);
}