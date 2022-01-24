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
struct vaapi_pic_ctx {int /*<<< orphan*/  picref; } ;
struct picture_context_t {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct picture_context_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct picture_context_t *opaque)
{
    struct vaapi_pic_ctx *ctx = (struct vaapi_pic_ctx *) opaque;
    FUNC1(ctx->picref);
    FUNC0(opaque);
}