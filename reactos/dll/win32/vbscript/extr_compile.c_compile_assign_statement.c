
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int compile_ctx_t ;
struct TYPE_3__ {int value_expr; int member_expr; } ;
typedef TYPE_1__ assign_statement_t ;
typedef int HRESULT ;
typedef int BOOL ;


 int compile_assignment (int *,int ,int ,int ) ;

__attribute__((used)) static HRESULT compile_assign_statement(compile_ctx_t *ctx, assign_statement_t *stat, BOOL is_set)
{
    return compile_assignment(ctx, stat->member_expr, stat->value_expr, is_set);
}
