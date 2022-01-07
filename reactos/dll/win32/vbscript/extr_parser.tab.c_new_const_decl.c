
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int parser_ctx_t ;
typedef int expression_t ;
struct TYPE_4__ {int * next; int * value_expr; int const* name; } ;
typedef TYPE_1__ const_decl_t ;
typedef int WCHAR ;


 TYPE_1__* parser_alloc (int *,int) ;

__attribute__((used)) static const_decl_t *new_const_decl(parser_ctx_t *ctx, const WCHAR *name, expression_t *expr)
{
    const_decl_t *decl;

    decl = parser_alloc(ctx, sizeof(*decl));
    if(!decl)
        return ((void*)0);

    decl->name = name;
    decl->value_expr = expr;
    decl->next = ((void*)0);
    return decl;
}
