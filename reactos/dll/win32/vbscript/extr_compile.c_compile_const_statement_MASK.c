#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_3__* decls; } ;
typedef  TYPE_2__ const_statement_t ;
struct TYPE_15__ {struct TYPE_15__* next; int /*<<< orphan*/  name; int /*<<< orphan*/  value_expr; } ;
typedef  TYPE_3__ const_decl_t ;
struct TYPE_16__ {TYPE_3__* const_decls; TYPE_1__* func; } ;
typedef  TYPE_4__ compile_ctx_t ;
struct TYPE_13__ {scalar_t__ type; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC_GLOBAL ; 
 int /*<<< orphan*/  OP_const ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC9(compile_ctx_t *ctx, const_statement_t *stat)
{
    const_decl_t *decl, *next_decl = stat->decls;

    do {
        decl = next_decl;

        if(FUNC6(ctx, decl->name, FALSE) || FUNC5(ctx, decl->name)
                || FUNC7(ctx, decl->name)) {
            FUNC1("%s redefined\n", FUNC3(decl->name));
            return E_FAIL;
        }

        if(ctx->func->type == FUNC_GLOBAL) {
            HRESULT hres;

            hres = FUNC2(ctx, decl->value_expr);
            if(FUNC0(hres))
                return hres;

            hres = FUNC8(ctx, OP_const, decl->name);
            if(FUNC0(hres))
                return hres;

            if(!FUNC4(ctx, 0))
                return E_OUTOFMEMORY;
        }

        next_decl = decl->next;
        decl->next = ctx->const_decls;
        ctx->const_decls = decl;
    } while(next_decl);

    return S_OK;
}