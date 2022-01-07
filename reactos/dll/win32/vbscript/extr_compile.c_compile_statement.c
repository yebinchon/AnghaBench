
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef int while_statement_t ;
struct TYPE_25__ {int type; struct TYPE_25__* next; } ;
typedef TYPE_1__ statement_t ;
struct TYPE_26__ {struct TYPE_26__* next; } ;
typedef TYPE_2__ statement_ctx_t ;
typedef int select_statement_t ;
typedef int onerror_statement_t ;
typedef int if_statement_t ;
typedef int function_statement_t ;
typedef int forto_statement_t ;
typedef int foreach_statement_t ;
typedef int dim_statement_t ;
typedef int const_statement_t ;
struct TYPE_27__ {TYPE_2__* stat_ctx; } ;
typedef TYPE_3__ compile_ctx_t ;
typedef int call_statement_t ;
typedef int assign_statement_t ;
typedef int HRESULT ;


 int E_NOTIMPL ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int FIXME (char*,int) ;
 int OP_stop ;
 int S_OK ;
 int TRUE ;
 int assert (int) ;
 int compile_assign_statement (TYPE_3__*,int *,int ) ;
 int compile_call_statement (TYPE_3__*,int *) ;
 int compile_const_statement (TYPE_3__*,int *) ;
 int compile_dim_statement (TYPE_3__*,int *) ;
 int compile_dowhile_statement (TYPE_3__*,int *) ;
 int compile_exitdo_statement (TYPE_3__*) ;
 int compile_exitfor_statement (TYPE_3__*) ;
 int compile_exitfunc_statement (TYPE_3__*) ;
 int compile_exitprop_statement (TYPE_3__*) ;
 int compile_exitsub_statement (TYPE_3__*) ;
 int compile_foreach_statement (TYPE_3__*,int *) ;
 int compile_forto_statement (TYPE_3__*,int *) ;
 int compile_function_statement (TYPE_3__*,int *) ;
 int compile_if_statement (TYPE_3__*,int *) ;
 int compile_onerror_statement (TYPE_3__*,int *) ;
 int compile_select_statement (TYPE_3__*,int *) ;
 int compile_while_statement (TYPE_3__*,int *) ;
 int push_instr (TYPE_3__*,int ) ;

__attribute__((used)) static HRESULT compile_statement(compile_ctx_t *ctx, statement_ctx_t *stat_ctx, statement_t *stat)
{
    HRESULT hres;

    if(stat_ctx) {
        stat_ctx->next = ctx->stat_ctx;
        ctx->stat_ctx = stat_ctx;
    }

    while(stat) {
        switch(stat->type) {
        case 149:
            hres = compile_assign_statement(ctx, (assign_statement_t*)stat, FALSE);
            break;
        case 148:
            hres = compile_call_statement(ctx, (call_statement_t*)stat);
            break;
        case 147:
            hres = compile_const_statement(ctx, (const_statement_t*)stat);
            break;
        case 146:
            hres = compile_dim_statement(ctx, (dim_statement_t*)stat);
            break;
        case 144:
        case 145:
            hres = compile_dowhile_statement(ctx, (while_statement_t*)stat);
            break;
        case 143:
            hres = compile_exitdo_statement(ctx);
            break;
        case 142:
            hres = compile_exitfor_statement(ctx);
            break;
        case 141:
            hres = compile_exitfunc_statement(ctx);
            break;
        case 140:
            hres = compile_exitprop_statement(ctx);
            break;
        case 139:
            hres = compile_exitsub_statement(ctx);
            break;
        case 138:
            hres = compile_foreach_statement(ctx, (foreach_statement_t*)stat);
            break;
        case 137:
            hres = compile_forto_statement(ctx, (forto_statement_t*)stat);
            break;
        case 136:
            hres = compile_function_statement(ctx, (function_statement_t*)stat);
            break;
        case 135:
            hres = compile_if_statement(ctx, (if_statement_t*)stat);
            break;
        case 134:
            hres = compile_onerror_statement(ctx, (onerror_statement_t*)stat);
            break;
        case 133:
            hres = compile_select_statement(ctx, (select_statement_t*)stat);
            break;
        case 132:
            hres = compile_assign_statement(ctx, (assign_statement_t*)stat, TRUE);
            break;
        case 131:
            hres = push_instr(ctx, OP_stop) ? S_OK : E_OUTOFMEMORY;
            break;
        case 130:
        case 129:
        case 128:
            hres = compile_while_statement(ctx, (while_statement_t*)stat);
            break;
        default:
            FIXME("Unimplemented statement type %d\n", stat->type);
            hres = E_NOTIMPL;
        }

        if(FAILED(hres))
            return hres;
        stat = stat->next;
    }

    if(stat_ctx) {
        assert(ctx->stat_ctx == stat_ctx);
        ctx->stat_ctx = stat_ctx->next;
    }

    return S_OK;
}
