#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_5__ {size_t n_symbols; int /*<<< orphan*/ * glyphs; } ;
typedef  TYPE_1__ Jbig2SymbolDict ;
typedef  int /*<<< orphan*/  Jbig2Ctx ;

/* Variables and functions */
 int /*<<< orphan*/  JBIG2_SEVERITY_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,size_t) ; 

Jbig2SymbolDict *
FUNC3(Jbig2Ctx *ctx, uint32_t n_dicts, Jbig2SymbolDict **dicts)
{
    uint32_t i, j, k, symbols;
    Jbig2SymbolDict *new_dict = NULL;

    /* count the imported symbols and allocate a new array */
    symbols = 0;
    for (i = 0; i < n_dicts; i++)
        symbols += dicts[i]->n_symbols;

    /* fill a new array with new references to glyph pointers */
    new_dict = FUNC2(ctx, symbols);
    if (new_dict != NULL) {
        k = 0;
        for (i = 0; i < n_dicts; i++)
            for (j = 0; j < dicts[i]->n_symbols; j++)
                new_dict->glyphs[k++] = FUNC1(ctx, dicts[i]->glyphs[j]);
    } else {
        FUNC0(ctx, JBIG2_SEVERITY_WARNING, -1, "failed to allocate new symbol dictionary");
    }

    return new_dict;
}