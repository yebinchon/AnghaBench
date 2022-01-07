
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;
struct expression_type {int const* type; } ;
struct expr_loc {int dummy; } ;
typedef int expr_t ;


 struct expression_type resolve_expression (struct expr_loc const*,int const*,int const*) ;

const type_t *expr_resolve_type(const struct expr_loc *expr_loc, const type_t *cont_type, const expr_t *expr)
{
    struct expression_type expr_type;
    expr_type = resolve_expression(expr_loc, cont_type, expr);
    return expr_type.type;
}
