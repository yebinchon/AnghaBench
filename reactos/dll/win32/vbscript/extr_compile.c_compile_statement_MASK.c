#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  while_statement_t ;
struct TYPE_25__ {int type; struct TYPE_25__* next; } ;
typedef  TYPE_1__ statement_t ;
struct TYPE_26__ {struct TYPE_26__* next; } ;
typedef  TYPE_2__ statement_ctx_t ;
typedef  int /*<<< orphan*/  select_statement_t ;
typedef  int /*<<< orphan*/  onerror_statement_t ;
typedef  int /*<<< orphan*/  if_statement_t ;
typedef  int /*<<< orphan*/  function_statement_t ;
typedef  int /*<<< orphan*/  forto_statement_t ;
typedef  int /*<<< orphan*/  foreach_statement_t ;
typedef  int /*<<< orphan*/  dim_statement_t ;
typedef  int /*<<< orphan*/  const_statement_t ;
struct TYPE_27__ {TYPE_2__* stat_ctx; } ;
typedef  TYPE_3__ compile_ctx_t ;
typedef  int /*<<< orphan*/  call_statement_t ;
typedef  int /*<<< orphan*/  assign_statement_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOTIMPL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  OP_stop ; 
#define  STAT_ASSIGN 149 
#define  STAT_CALL 148 
#define  STAT_CONST 147 
#define  STAT_DIM 146 
#define  STAT_DOUNTIL 145 
#define  STAT_DOWHILE 144 
#define  STAT_EXITDO 143 
#define  STAT_EXITFOR 142 
#define  STAT_EXITFUNC 141 
#define  STAT_EXITPROP 140 
#define  STAT_EXITSUB 139 
#define  STAT_FOREACH 138 
#define  STAT_FORTO 137 
#define  STAT_FUNC 136 
#define  STAT_IF 135 
#define  STAT_ONERROR 134 
#define  STAT_SELECT 133 
#define  STAT_SET 132 
#define  STAT_STOP 131 
#define  STAT_UNTIL 130 
#define  STAT_WHILE 129 
#define  STAT_WHILELOOP 128 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC21(compile_ctx_t *ctx, statement_ctx_t *stat_ctx, statement_t *stat)
{
    HRESULT hres;

    if(stat_ctx) {
        stat_ctx->next = ctx->stat_ctx;
        ctx->stat_ctx = stat_ctx;
    }

    while(stat) {
        switch(stat->type) {
        case STAT_ASSIGN:
            hres = FUNC3(ctx, (assign_statement_t*)stat, FALSE);
            break;
        case STAT_CALL:
            hres = FUNC4(ctx, (call_statement_t*)stat);
            break;
        case STAT_CONST:
            hres = FUNC5(ctx, (const_statement_t*)stat);
            break;
        case STAT_DIM:
            hres = FUNC6(ctx, (dim_statement_t*)stat);
            break;
        case STAT_DOWHILE:
        case STAT_DOUNTIL:
            hres = FUNC7(ctx, (while_statement_t*)stat);
            break;
        case STAT_EXITDO:
            hres = FUNC8(ctx);
            break;
        case STAT_EXITFOR:
            hres = FUNC9(ctx);
            break;
        case STAT_EXITFUNC:
            hres = FUNC10(ctx);
            break;
        case STAT_EXITPROP:
            hres = FUNC11(ctx);
            break;
        case STAT_EXITSUB:
            hres = FUNC12(ctx);
            break;
        case STAT_FOREACH:
            hres = FUNC13(ctx, (foreach_statement_t*)stat);
            break;
        case STAT_FORTO:
            hres = FUNC14(ctx, (forto_statement_t*)stat);
            break;
        case STAT_FUNC:
            hres = FUNC15(ctx, (function_statement_t*)stat);
            break;
        case STAT_IF:
            hres = FUNC16(ctx, (if_statement_t*)stat);
            break;
        case STAT_ONERROR:
            hres = FUNC17(ctx, (onerror_statement_t*)stat);
            break;
        case STAT_SELECT:
            hres = FUNC18(ctx, (select_statement_t*)stat);
            break;
        case STAT_SET:
            hres = FUNC3(ctx, (assign_statement_t*)stat, TRUE);
            break;
        case STAT_STOP:
            hres = FUNC20(ctx, OP_stop) ? S_OK : E_OUTOFMEMORY;
            break;
        case STAT_UNTIL:
        case STAT_WHILE:
        case STAT_WHILELOOP:
            hres = FUNC19(ctx, (while_statement_t*)stat);
            break;
        default:
            FUNC1("Unimplemented statement type %d\n", stat->type);
            hres = E_NOTIMPL;
        }

        if(FUNC0(hres))
            return hres;
        stat = stat->next;
    }

    if(stat_ctx) {
        FUNC2(ctx->stat_ctx == stat_ctx);
        ctx->stat_ctx = stat_ctx->next;
    }

    return S_OK;
}