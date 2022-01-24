#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_3__* code_ctx; int /*<<< orphan*/  type; } ;
struct TYPE_12__ {int /*<<< orphan*/  entry; TYPE_2__ main_code; int /*<<< orphan*/  option_explicit; int /*<<< orphan*/  heap; int /*<<< orphan*/  instrs; int /*<<< orphan*/  source; } ;
typedef  TYPE_3__ vbscode_t ;
typedef  int /*<<< orphan*/  instr_t ;
struct TYPE_10__ {int /*<<< orphan*/  option_explicit; } ;
struct TYPE_13__ {int instr_cnt; int instr_size; TYPE_1__ parser; } ;
typedef  TYPE_4__ compile_ctx_t ;
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC_GLOBAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_3__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 

__attribute__((used)) static vbscode_t *FUNC7(compile_ctx_t *ctx, const WCHAR *source)
{
    vbscode_t *ret;

    ret = FUNC1(sizeof(*ret));
    if(!ret)
        return NULL;

    ret->source = FUNC4(source);
    if(!ret->source) {
        FUNC2(ret);
        return NULL;
    }

    ret->instrs = FUNC0(32*sizeof(instr_t));
    if(!ret->instrs) {
        FUNC6(ret);
        return NULL;
    }

    ctx->instr_cnt = 1;
    ctx->instr_size = 32;
    FUNC3(&ret->heap);

    ret->option_explicit = ctx->parser.option_explicit;

    ret->main_code.type = FUNC_GLOBAL;
    ret->main_code.code_ctx = ret;

    FUNC5(&ret->entry);
    return ret;
}