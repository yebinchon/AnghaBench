#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  allocator; } ;
struct TYPE_8__ {int n_patterns; struct TYPE_8__* patterns; } ;
typedef  TYPE_1__ Jbig2PatternDict ;
typedef  TYPE_2__ Jbig2Ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__) ; 

void
FUNC2(Jbig2Ctx *ctx, Jbig2PatternDict *dict)
{
    int i;

    if (dict == NULL)
        return;
    if (dict->patterns != NULL)
        for (i = 0; i < dict->n_patterns; i++)
            FUNC1(ctx, dict->patterns[i]);
    FUNC0(ctx->allocator, dict->patterns);
    FUNC0(ctx->allocator, dict);
}