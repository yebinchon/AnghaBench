
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int statement_t ;
typedef int parser_ctx_t ;
typedef int expression_t ;
struct TYPE_4__ {int * next; int * stat; int * expr; } ;
typedef TYPE_1__ elseif_decl_t ;


 TYPE_1__* parser_alloc (int *,int) ;

__attribute__((used)) static elseif_decl_t *new_elseif_decl(parser_ctx_t *ctx, expression_t *expr, statement_t *stat)
{
    elseif_decl_t *decl;

    decl = parser_alloc(ctx, sizeof(*decl));
    if(!decl)
        return ((void*)0);

    decl->expr = expr;
    decl->stat = stat;
    decl->next = ((void*)0);
    return decl;
}
