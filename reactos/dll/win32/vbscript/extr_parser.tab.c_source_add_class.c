
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* class_decls; } ;
typedef TYPE_1__ parser_ctx_t ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_2__ class_decl_t ;



__attribute__((used)) static void source_add_class(parser_ctx_t *ctx, class_decl_t *class_decl)
{
    class_decl->next = ctx->class_decls;
    ctx->class_decls = class_decl;
}
