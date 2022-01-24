#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vbsop_t ;
struct TYPE_3__ {int /*<<< orphan*/  identifier; int /*<<< orphan*/  args; int /*<<< orphan*/ * obj_expr; } ;
typedef  TYPE_1__ member_expression_t ;
typedef  int /*<<< orphan*/  expression_t ;
typedef  int /*<<< orphan*/  compile_ctx_t ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_assign_ident ; 
 int /*<<< orphan*/  OP_assign_member ; 
 int /*<<< orphan*/  OP_set_ident ; 
 int /*<<< orphan*/  OP_set_member ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static HRESULT FUNC5(compile_ctx_t *ctx, member_expression_t *member_expr, expression_t *value_expr, BOOL is_set)
{
    unsigned args_cnt;
    vbsop_t op;
    HRESULT hres;

    if(member_expr->obj_expr) {
        hres = FUNC2(ctx, member_expr->obj_expr);
        if(FUNC0(hres))
            return hres;

        op = is_set ? OP_set_member : OP_assign_member;
    }else {
        op = is_set ? OP_set_ident : OP_assign_ident;
    }

    hres = FUNC2(ctx, value_expr);
    if(FUNC0(hres))
        return hres;

    hres = FUNC1(ctx, member_expr->args, &args_cnt);
    if(FUNC0(hres))
        return hres;

    hres = FUNC4(ctx, op, member_expr->identifier, args_cnt);
    if(FUNC0(hres))
        return hres;

    if(!FUNC3(ctx, 0))
        return E_OUTOFMEMORY;

    return S_OK;
}