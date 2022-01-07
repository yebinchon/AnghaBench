
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_4__* font; } ;
typedef TYPE_2__ fz_context ;
struct TYPE_6__ {int realloc; int free; int alloc; TYPE_2__* user; } ;
struct TYPE_8__ {int ctx_refs; TYPE_1__ ftmemory; int * load_font; scalar_t__ ftlib_refs; int * ftlib; } ;


 int ft_alloc ;
 int ft_free ;
 int ft_realloc ;
 int fz_font_context ;
 TYPE_4__* fz_malloc_struct (TYPE_2__*,int ) ;

void fz_new_font_context(fz_context *ctx)
{
 ctx->font = fz_malloc_struct(ctx, fz_font_context);
 ctx->font->ctx_refs = 1;
 ctx->font->ftlib = ((void*)0);
 ctx->font->ftlib_refs = 0;
 ctx->font->load_font = ((void*)0);
 ctx->font->ftmemory.user = ctx;
 ctx->font->ftmemory.alloc = ft_alloc;
 ctx->font->ftmemory.free = ft_free;
 ctx->font->ftmemory.realloc = ft_realloc;
}
