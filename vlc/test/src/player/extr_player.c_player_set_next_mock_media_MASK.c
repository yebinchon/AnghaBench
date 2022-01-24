#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct media_params {int dummy; } ;
struct TYPE_2__ {scalar_t__ size; } ;
struct ctx {int /*<<< orphan*/  next_medias; TYPE_1__ played_medias; int /*<<< orphan*/  player; } ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,struct media_params const*) ; 
 int /*<<< orphan*/  FUNC2 (struct ctx*,char const*,struct media_params const*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct ctx *ctx, const char *name,
                           const struct media_params *params)
{
    if (FUNC3(ctx->player) == NULL)
    {
        FUNC0(ctx->played_medias.size == 0);
        FUNC2(ctx, name, params, false);
    }
    else
    {
        input_item_t *media = FUNC1(name, params);
        FUNC0(*media);

        FUNC0(ctx->played_medias.size > 0);
        bool success = FUNC4(&ctx->next_medias, media);
        FUNC0(success);
    }
}