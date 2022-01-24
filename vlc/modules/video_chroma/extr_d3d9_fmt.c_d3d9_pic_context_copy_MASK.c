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
struct d3d9_pic_context {int /*<<< orphan*/  s; int /*<<< orphan*/  picsys; } ;
typedef  int /*<<< orphan*/  picture_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct d3d9_pic_context* FUNC1 (int /*<<< orphan*/ *) ; 
 struct d3d9_pic_context* FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

picture_context_t *FUNC4(picture_context_t *ctx)
{
    struct d3d9_pic_context *pic_ctx = FUNC2(1, sizeof(*pic_ctx));
    if (FUNC3(pic_ctx==NULL))
        return NULL;
    *pic_ctx = *FUNC1(ctx);
    FUNC0(&pic_ctx->picsys);
    return &pic_ctx->s;
}