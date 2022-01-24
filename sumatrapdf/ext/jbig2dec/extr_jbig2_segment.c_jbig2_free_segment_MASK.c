#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  allocator; } ;
struct TYPE_10__ {int flags; int /*<<< orphan*/ * result; struct TYPE_10__* referred_to_segments; } ;
typedef  int /*<<< orphan*/  Jbig2SymbolDict ;
typedef  TYPE_1__ Jbig2Segment ;
typedef  int /*<<< orphan*/  Jbig2PatternDict ;
typedef  int /*<<< orphan*/  Jbig2Image ;
typedef  int /*<<< orphan*/  Jbig2HuffmanParams ;
typedef  TYPE_2__ Jbig2Ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 

void
FUNC5(Jbig2Ctx *ctx, Jbig2Segment *segment)
{
    if (segment == NULL)
        return;

    FUNC0(ctx->allocator, segment->referred_to_segments);
    /* todo: we need either some separate fields or
       a more complex result object rather than this
       brittle special casing */
    switch (segment->flags & 63) {
    case 0:                    /* symbol dictionary */
        if (segment->result != NULL)
            FUNC3(ctx, (Jbig2SymbolDict *) segment->result);
        break;
    case 4:                    /* intermediate text region */
    case 40:                   /* intermediate refinement region */
        if (segment->result != NULL)
            FUNC2(ctx, (Jbig2Image *) segment->result);
        break;
    case 16:                   /* pattern dictionary */
        if (segment->result != NULL)
            FUNC1(ctx, (Jbig2PatternDict *) segment->result);
        break;
    case 53:                   /* user-supplied huffman table */
        if (segment->result != NULL)
            FUNC4(ctx, (Jbig2HuffmanParams *) segment->result);
        break;
    default:
        /* anything else is probably an undefined pointer */
        break;
    }
    FUNC0(ctx->allocator, segment);
}