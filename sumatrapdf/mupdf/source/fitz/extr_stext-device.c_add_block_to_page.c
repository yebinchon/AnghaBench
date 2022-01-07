
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* last_block; TYPE_2__* first_block; int pool; } ;
typedef TYPE_1__ fz_stext_page ;
struct TYPE_7__ {struct TYPE_7__* next; struct TYPE_7__* prev; } ;
typedef TYPE_2__ fz_stext_block ;
typedef int fz_context ;


 TYPE_2__* fz_pool_alloc (int *,int ,int) ;

__attribute__((used)) static fz_stext_block *
add_block_to_page(fz_context *ctx, fz_stext_page *page)
{
 fz_stext_block *block = fz_pool_alloc(ctx, page->pool, sizeof *page->first_block);
 block->prev = page->last_block;
 if (!page->first_block)
  page->first_block = page->last_block = block;
 else
 {
  page->last_block->next = block;
  page->last_block = block;
 }
 return block;
}
