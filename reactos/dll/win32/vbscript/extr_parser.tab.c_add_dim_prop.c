
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int hres; } ;
typedef TYPE_1__ parser_ctx_t ;
struct TYPE_9__ {int is_public; struct TYPE_9__* next; } ;
typedef TYPE_2__ dim_decl_t ;
struct TYPE_10__ {TYPE_2__* props; } ;
typedef TYPE_3__ class_decl_t ;


 int E_FAIL ;
 int FIXME (char*) ;
 unsigned int STORAGE_IS_DEFAULT ;
 unsigned int STORAGE_IS_PRIVATE ;

__attribute__((used)) static class_decl_t *add_dim_prop(parser_ctx_t *ctx, class_decl_t *class_decl, dim_decl_t *dim_decl, unsigned storage_flags)
{
    if(storage_flags & STORAGE_IS_DEFAULT) {
        FIXME("variant prop van't be default value\n");
        ctx->hres = E_FAIL;
        return ((void*)0);
    }

    dim_decl->is_public = !(storage_flags & STORAGE_IS_PRIVATE);
    dim_decl->next = class_decl->props;
    class_decl->props = dim_decl;
    return class_decl;
}
