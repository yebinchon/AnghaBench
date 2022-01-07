
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int expression_t ;
struct TYPE_4__ {int * value_expr; int name; struct TYPE_4__* next; } ;
typedef TYPE_1__ const_decl_t ;
struct TYPE_5__ {TYPE_1__* global_consts; TYPE_1__* const_decls; } ;
typedef TYPE_2__ compile_ctx_t ;
typedef int WCHAR ;
typedef int BOOL ;


 int strcmpiW (int ,int const*) ;

__attribute__((used)) static expression_t *lookup_const_decls(compile_ctx_t *ctx, const WCHAR *name, BOOL lookup_global)
{
    const_decl_t *decl;

    for(decl = ctx->const_decls; decl; decl = decl->next) {
        if(!strcmpiW(decl->name, name))
            return decl->value_expr;
    }

    if(!lookup_global)
        return ((void*)0);

    for(decl = ctx->global_consts; decl; decl = decl->next) {
        if(!strcmpiW(decl->name, name))
            return decl->value_expr;
    }

    return ((void*)0);
}
