
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int parser_ctx_t ;
struct TYPE_4__ {int * next; int * props; int * funcs; } ;
typedef TYPE_1__ class_decl_t ;


 TYPE_1__* parser_alloc (int *,int) ;

__attribute__((used)) static class_decl_t *new_class_decl(parser_ctx_t *ctx)
{
    class_decl_t *class_decl;

    class_decl = parser_alloc(ctx, sizeof(*class_decl));
    if(!class_decl)
        return ((void*)0);

    class_decl->funcs = ((void*)0);
    class_decl->props = ((void*)0);
    class_decl->next = ((void*)0);
    return class_decl;
}
