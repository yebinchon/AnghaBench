
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int code_list; } ;
typedef TYPE_1__ script_ctx_t ;


 int LIST_ENTRY (int ,int ,int ) ;
 int entry ;
 int heap_free (TYPE_1__*) ;
 int list_empty (int *) ;
 int list_head (int *) ;
 int release_script (TYPE_1__*) ;
 int release_vbscode (int ) ;
 int vbscode_t ;

__attribute__((used)) static void destroy_script(script_ctx_t *ctx)
{
    while(!list_empty(&ctx->code_list))
        release_vbscode(LIST_ENTRY(list_head(&ctx->code_list), vbscode_t, entry));

    release_script(ctx);
    heap_free(ctx);
}
