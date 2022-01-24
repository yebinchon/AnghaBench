#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_3__* dim_decls; } ;
typedef  TYPE_2__ dim_statement_t ;
struct TYPE_14__ {struct TYPE_14__* next; int /*<<< orphan*/  name; scalar_t__ is_array; } ;
typedef  TYPE_3__ dim_decl_t ;
struct TYPE_15__ {TYPE_3__* dim_decls_tail; TYPE_3__* dim_decls; TYPE_1__* func; } ;
typedef  TYPE_4__ compile_ctx_t ;
struct TYPE_12__ {int /*<<< orphan*/  array_cnt; int /*<<< orphan*/  var_cnt; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_dim ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC8(compile_ctx_t *ctx, dim_statement_t *stat)
{
    dim_decl_t *dim_decl = stat->dim_decls;

    while(1) {
        if(FUNC6(ctx, dim_decl->name) || FUNC4(ctx, dim_decl->name)
           || FUNC5(ctx, dim_decl->name, FALSE)) {
            FUNC1("dim %s name redefined\n", FUNC2(dim_decl->name));
            return E_FAIL;
        }

        ctx->func->var_cnt++;

        if(dim_decl->is_array) {
            HRESULT hres = FUNC7(ctx, OP_dim, dim_decl->name, ctx->func->array_cnt++);
            if(FUNC0(hres))
                return hres;

            if(!FUNC3(ctx, 0))
                return E_OUTOFMEMORY;
        }

        if(!dim_decl->next)
            break;
        dim_decl = dim_decl->next;
    }

    if(ctx->dim_decls_tail)
        ctx->dim_decls_tail->next = stat->dim_decls;
    else
        ctx->dim_decls = stat->dim_decls;
    ctx->dim_decls_tail = dim_decl;
    return S_OK;
}