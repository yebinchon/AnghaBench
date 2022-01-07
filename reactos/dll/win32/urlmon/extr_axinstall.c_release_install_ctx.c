
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* install_file; scalar_t__ callback; scalar_t__ uri; } ;
typedef TYPE_1__ install_ctx_t ;


 int IBindStatusCallback_Release (scalar_t__) ;
 int IUri_Release (scalar_t__) ;
 int heap_free (TYPE_1__*) ;

__attribute__((used)) static void release_install_ctx(install_ctx_t *ctx)
{
    if(ctx->uri)
        IUri_Release(ctx->uri);
    if(ctx->callback)
        IBindStatusCallback_Release(ctx->callback);
    heap_free(ctx->install_file);
    heap_free(ctx);
}
