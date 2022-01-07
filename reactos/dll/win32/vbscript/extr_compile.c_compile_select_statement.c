
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* case_clausules; TYPE_2__* expr; } ;
typedef TYPE_1__ select_statement_t ;
struct TYPE_7__ {struct TYPE_7__* next; } ;
typedef TYPE_2__ expression_t ;
typedef int compile_ctx_t ;
struct TYPE_8__ {struct TYPE_8__* next; int stat; TYPE_2__* expr; } ;
typedef TYPE_3__ case_clausule_t ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int OP_case ;
 int OP_jmp ;
 int OP_pop ;
 int OP_val ;
 int S_OK ;
 unsigned int alloc_label (int *) ;
 int compile_expression (int *,TYPE_2__*) ;
 int compile_statement (int *,int *,int ) ;
 int emit_catch_jmp (int *,int ,unsigned int) ;
 unsigned int* heap_alloc (unsigned int) ;
 int heap_free (unsigned int*) ;
 int label_set_addr (int *,unsigned int) ;
 int push_instr (int *,int ) ;
 int push_instr_addr (int *,int ,unsigned int) ;
 int push_instr_uint (int *,int ,int) ;

__attribute__((used)) static HRESULT compile_select_statement(compile_ctx_t *ctx, select_statement_t *stat)
{
    unsigned end_label, case_cnt = 0, *case_labels = ((void*)0), i;
    case_clausule_t *case_iter;
    expression_t *expr_iter;
    HRESULT hres;

    hres = compile_expression(ctx, stat->expr);
    if(FAILED(hres))
        return hres;

    if(!push_instr(ctx, OP_val))
        return E_OUTOFMEMORY;

    end_label = alloc_label(ctx);
    if(!end_label)
        return E_OUTOFMEMORY;

    if(!emit_catch_jmp(ctx, 0, end_label))
        return E_OUTOFMEMORY;

    for(case_iter = stat->case_clausules; case_iter; case_iter = case_iter->next)
        case_cnt++;

    if(case_cnt) {
        case_labels = heap_alloc(case_cnt*sizeof(*case_labels));
        if(!case_labels)
            return E_OUTOFMEMORY;
    }

    for(case_iter = stat->case_clausules, i=0; case_iter; case_iter = case_iter->next, i++) {
        case_labels[i] = alloc_label(ctx);
        if(!case_labels[i]) {
            hres = E_OUTOFMEMORY;
            break;
        }

        if(!case_iter->expr)
            break;

        for(expr_iter = case_iter->expr; expr_iter; expr_iter = expr_iter->next) {
            hres = compile_expression(ctx, expr_iter);
            if(FAILED(hres))
                break;

            hres = push_instr_addr(ctx, OP_case, case_labels[i]);
            if(FAILED(hres))
                break;

            if(!emit_catch_jmp(ctx, 0, case_labels[i])) {
                hres = E_OUTOFMEMORY;
                break;
            }
        }
    }

    if(FAILED(hres)) {
        heap_free(case_labels);
        return hres;
    }

    hres = push_instr_uint(ctx, OP_pop, 1);
    if(FAILED(hres)) {
        heap_free(case_labels);
        return hres;
    }

    hres = push_instr_addr(ctx, OP_jmp, case_iter ? case_labels[i] : end_label);
    if(FAILED(hres)) {
        heap_free(case_labels);
        return hres;
    }

    for(case_iter = stat->case_clausules, i=0; case_iter; case_iter = case_iter->next, i++) {
        label_set_addr(ctx, case_labels[i]);
        hres = compile_statement(ctx, ((void*)0), case_iter->stat);
        if(FAILED(hres))
            break;

        if(!case_iter->next)
            break;

        hres = push_instr_addr(ctx, OP_jmp, end_label);
        if(FAILED(hres))
            break;
    }

    heap_free(case_labels);
    if(FAILED(hres))
        return hres;

    label_set_addr(ctx, end_label);
    return S_OK;
}
