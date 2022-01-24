#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_3__* case_clausules; TYPE_2__* expr; } ;
typedef  TYPE_1__ select_statement_t ;
struct TYPE_7__ {struct TYPE_7__* next; } ;
typedef  TYPE_2__ expression_t ;
typedef  int /*<<< orphan*/  compile_ctx_t ;
struct TYPE_8__ {struct TYPE_8__* next; int /*<<< orphan*/  stat; TYPE_2__* expr; } ;
typedef  TYPE_3__ case_clausule_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_case ; 
 int /*<<< orphan*/  OP_jmp ; 
 int /*<<< orphan*/  OP_pop ; 
 int /*<<< orphan*/  OP_val ; 
 int /*<<< orphan*/  S_OK ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int* FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static HRESULT FUNC11(compile_ctx_t *ctx, select_statement_t *stat)
{
    unsigned end_label, case_cnt = 0, *case_labels = NULL, i;
    case_clausule_t *case_iter;
    expression_t *expr_iter;
    HRESULT hres;

    hres = FUNC2(ctx, stat->expr);
    if(FUNC0(hres))
        return hres;

    if(!FUNC8(ctx, OP_val))
        return E_OUTOFMEMORY;

    end_label = FUNC1(ctx);
    if(!end_label)
        return E_OUTOFMEMORY;

    if(!FUNC4(ctx, 0, end_label))
        return E_OUTOFMEMORY;

    for(case_iter = stat->case_clausules; case_iter; case_iter = case_iter->next)
        case_cnt++;

    if(case_cnt) {
        case_labels = FUNC5(case_cnt*sizeof(*case_labels));
        if(!case_labels)
            return E_OUTOFMEMORY;
    }

    for(case_iter = stat->case_clausules, i=0; case_iter; case_iter = case_iter->next, i++) {
        case_labels[i] = FUNC1(ctx);
        if(!case_labels[i]) {
            hres = E_OUTOFMEMORY;
            break;
        }

        if(!case_iter->expr)
            break;

        for(expr_iter = case_iter->expr; expr_iter; expr_iter = expr_iter->next) {
            hres = FUNC2(ctx, expr_iter);
            if(FUNC0(hres))
                break;

            hres = FUNC9(ctx, OP_case, case_labels[i]);
            if(FUNC0(hres))
                break;

            if(!FUNC4(ctx, 0, case_labels[i])) {
                hres = E_OUTOFMEMORY;
                break;
            }
        }
    }

    if(FUNC0(hres)) {
        FUNC6(case_labels);
        return hres;
    }

    hres = FUNC10(ctx, OP_pop, 1);
    if(FUNC0(hres)) {
        FUNC6(case_labels);
        return hres;
    }

    hres = FUNC9(ctx, OP_jmp, case_iter ? case_labels[i] : end_label);
    if(FUNC0(hres)) {
        FUNC6(case_labels);
        return hres;
    }

    for(case_iter = stat->case_clausules, i=0; case_iter; case_iter = case_iter->next, i++) {
        FUNC7(ctx, case_labels[i]);
        hres = FUNC3(ctx, NULL, case_iter->stat);
        if(FUNC0(hres))
            break;

        if(!case_iter->next)
            break;

        hres = FUNC9(ctx, OP_jmp, end_label);
        if(FUNC0(hres))
            break;
    }

    FUNC6(case_labels);
    if(FUNC0(hres))
        return hres;

    FUNC7(ctx, end_label);
    return S_OK;
}