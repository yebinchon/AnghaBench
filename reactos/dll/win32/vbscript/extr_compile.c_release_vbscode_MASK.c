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
struct TYPE_5__ {unsigned int bstr_cnt; struct TYPE_5__* instrs; struct TYPE_5__* source; struct TYPE_5__* bstr_pool; int /*<<< orphan*/  heap; scalar_t__ context; int /*<<< orphan*/  entry; } ;
typedef  TYPE_1__ vbscode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(vbscode_t *code)
{
    unsigned i;

    FUNC4(&code->entry);

    for(i=0; i < code->bstr_cnt; i++)
        FUNC1(code->bstr_pool[i]);

    if(code->context)
        FUNC0(code->context);
    FUNC3(&code->heap);

    FUNC2(code->bstr_pool);
    FUNC2(code->source);
    FUNC2(code->instrs);
    FUNC2(code);
}