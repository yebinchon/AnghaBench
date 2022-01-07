
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ref_count; int cnv; } ;
typedef TYPE_1__ mm_cipher_context_t ;


 int sqlite3_free (TYPE_1__*) ;
 int ucnv_close (int ) ;

__attribute__((used)) static void mm_func_destroy(void *ptr)
{
    mm_cipher_context_t *ctx = (mm_cipher_context_t *) ptr;
    if (--ctx->ref_count == 0) {
        ucnv_close(ctx->cnv);
        sqlite3_free(ctx);
    }
}
