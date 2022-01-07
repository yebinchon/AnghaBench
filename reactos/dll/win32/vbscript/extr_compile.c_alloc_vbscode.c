
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_3__* code_ctx; int type; } ;
struct TYPE_12__ {int entry; TYPE_2__ main_code; int option_explicit; int heap; int instrs; int source; } ;
typedef TYPE_3__ vbscode_t ;
typedef int instr_t ;
struct TYPE_10__ {int option_explicit; } ;
struct TYPE_13__ {int instr_cnt; int instr_size; TYPE_1__ parser; } ;
typedef TYPE_4__ compile_ctx_t ;
typedef int WCHAR ;


 int FUNC_GLOBAL ;
 int heap_alloc (int) ;
 TYPE_3__* heap_alloc_zero (int) ;
 int heap_free (TYPE_3__*) ;
 int heap_pool_init (int *) ;
 int heap_strdupW (int const*) ;
 int list_init (int *) ;
 int release_vbscode (TYPE_3__*) ;

__attribute__((used)) static vbscode_t *alloc_vbscode(compile_ctx_t *ctx, const WCHAR *source)
{
    vbscode_t *ret;

    ret = heap_alloc_zero(sizeof(*ret));
    if(!ret)
        return ((void*)0);

    ret->source = heap_strdupW(source);
    if(!ret->source) {
        heap_free(ret);
        return ((void*)0);
    }

    ret->instrs = heap_alloc(32*sizeof(instr_t));
    if(!ret->instrs) {
        release_vbscode(ret);
        return ((void*)0);
    }

    ctx->instr_cnt = 1;
    ctx->instr_size = 32;
    heap_pool_init(&ret->heap);

    ret->option_explicit = ctx->parser.option_explicit;

    ret->main_code.type = FUNC_GLOBAL;
    ret->main_code.code_ctx = ret;

    list_init(&ret->entry);
    return ret;
}
