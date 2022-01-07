
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* code; } ;
typedef TYPE_2__ compile_ctx_t ;
typedef int WCHAR ;
struct TYPE_4__ {int bstr_pool_size; size_t bstr_cnt; int ** bstr_pool; } ;
typedef int * BSTR ;


 int * SysAllocString (int const*) ;
 int ** heap_alloc (int) ;
 int ** heap_realloc (int **,int) ;

__attribute__((used)) static BSTR alloc_bstr_arg(compile_ctx_t *ctx, const WCHAR *str)
{
    if(!ctx->code->bstr_pool_size) {
        ctx->code->bstr_pool = heap_alloc(8 * sizeof(BSTR));
        if(!ctx->code->bstr_pool)
            return ((void*)0);
        ctx->code->bstr_pool_size = 8;
    }else if(ctx->code->bstr_pool_size == ctx->code->bstr_cnt) {
        BSTR *new_pool;

        new_pool = heap_realloc(ctx->code->bstr_pool, ctx->code->bstr_pool_size*2*sizeof(BSTR));
        if(!new_pool)
            return ((void*)0);

        ctx->code->bstr_pool = new_pool;
        ctx->code->bstr_pool_size *= 2;
    }

    ctx->code->bstr_pool[ctx->code->bstr_cnt] = SysAllocString(str);
    if(!ctx->code->bstr_pool[ctx->code->bstr_cnt])
        return ((void*)0);

    return ctx->code->bstr_pool[ctx->code->bstr_cnt++];
}
