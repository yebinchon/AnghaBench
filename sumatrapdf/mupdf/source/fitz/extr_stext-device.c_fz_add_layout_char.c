
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {float x; float w; char const* p; struct TYPE_5__* next; } ;
typedef TYPE_1__ fz_layout_char ;
struct TYPE_6__ {TYPE_1__** text_tailp; int pool; } ;
typedef TYPE_2__ fz_layout_block ;
typedef int fz_context ;


 TYPE_1__* fz_pool_alloc (int *,int ,int) ;

void fz_add_layout_char(fz_context *ctx, fz_layout_block *block, float x, float w, const char *p)
{
 fz_layout_char *ch = fz_pool_alloc(ctx, block->pool, sizeof (fz_layout_char));
 ch->x = x;
 ch->w = w;
 ch->p = p;
 ch->next = ((void*)0);
 *block->text_tailp = ch;
 block->text_tailp = &ch->next;
}
