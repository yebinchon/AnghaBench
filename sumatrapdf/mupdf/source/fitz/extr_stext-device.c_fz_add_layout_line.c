
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {float x; float y; float h; char const* p; int * text; struct TYPE_5__* next; } ;
typedef TYPE_1__ fz_layout_line ;
struct TYPE_6__ {int ** text_tailp; TYPE_1__** tailp; int pool; } ;
typedef TYPE_2__ fz_layout_block ;
typedef int fz_context ;


 TYPE_1__* fz_pool_alloc (int *,int ,int) ;

void fz_add_layout_line(fz_context *ctx, fz_layout_block *block, float x, float y, float h, const char *p)
{
 fz_layout_line *line = fz_pool_alloc(ctx, block->pool, sizeof (fz_layout_line));
 line->x = x;
 line->y = y;
 line->h = h;
 line->p = p;
 line->text = ((void*)0);
 line->next = ((void*)0);
 *block->tailp = line;
 block->tailp = &line->next;
 block->text_tailp = &line->text;
}
