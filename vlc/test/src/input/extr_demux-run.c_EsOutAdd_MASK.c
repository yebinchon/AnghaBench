#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct test_es_out_t {int /*<<< orphan*/  parent; TYPE_1__* ids; } ;
typedef  int /*<<< orphan*/  es_out_t ;
struct TYPE_7__ {int /*<<< orphan*/  fmt; int /*<<< orphan*/ * decoder; struct TYPE_7__* next; } ;
typedef  TYPE_1__ es_out_id_t ;
struct TYPE_8__ {scalar_t__ i_group; } ;
typedef  TYPE_2__ es_format_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__ const*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static es_out_id_t *FUNC6(es_out_t *out, const es_format_t *fmt)
{
    struct test_es_out_t *ctx = (struct test_es_out_t *) out;

    if (fmt->i_group < 0)
        return NULL;

    es_out_id_t *id = FUNC3(sizeof (*id));
    if (FUNC5(id == NULL))
        return NULL;

    id->next = ctx->ids;
    ctx->ids = id;
#ifdef HAVE_DECODERS
    es_format_Copy(&id->fmt, fmt);
    id->decoder = test_decoder_create(ctx->parent, &id->fmt);
    if (id->decoder == NULL)
        es_format_Clean(&id->fmt);
#endif

    FUNC0("[%p] Added   ES\n", (void *)id);
    return id;
}