
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int parser_ctx_t ;
struct TYPE_4__ {int * next; int by_ref; int const* name; } ;
typedef TYPE_1__ arg_decl_t ;
typedef int WCHAR ;
typedef int BOOL ;


 TYPE_1__* parser_alloc (int *,int) ;

__attribute__((used)) static arg_decl_t *new_argument_decl(parser_ctx_t *ctx, const WCHAR *name, BOOL by_ref)
{
    arg_decl_t *arg_decl;

    arg_decl = parser_alloc(ctx, sizeof(*arg_decl));
    if(!arg_decl)
        return ((void*)0);

    arg_decl->name = name;
    arg_decl->by_ref = by_ref;
    arg_decl->next = ((void*)0);
    return arg_decl;
}
