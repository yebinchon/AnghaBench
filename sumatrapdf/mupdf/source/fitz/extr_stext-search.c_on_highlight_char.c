
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct highlight {float vfuzz; float hfuzz; int len; int cap; TYPE_3__* box; } ;
struct TYPE_6__ {int dir; } ;
typedef TYPE_1__ fz_stext_line ;
struct TYPE_8__ {int lr; int ur; int ul; int ll; } ;
struct TYPE_7__ {float size; TYPE_3__ quad; } ;
typedef TYPE_2__ fz_stext_char ;
typedef TYPE_3__ fz_quad ;
typedef int fz_context ;


 float hdist (int *,int *,int *) ;
 float vdist (int *,int *,int *) ;

__attribute__((used)) static void on_highlight_char(fz_context *ctx, void *arg, fz_stext_line *line, fz_stext_char *ch)
{
 struct highlight *hits = arg;
 float vfuzz = ch->size * hits->vfuzz;
 float hfuzz = ch->size * hits->hfuzz;

 if (hits->len > 0)
 {
  fz_quad *end = &hits->box[hits->len-1];
  if (hdist(&line->dir, &end->lr, &ch->quad.ll) < hfuzz
   && vdist(&line->dir, &end->lr, &ch->quad.ll) < vfuzz
   && hdist(&line->dir, &end->ur, &ch->quad.ul) < hfuzz
   && vdist(&line->dir, &end->ur, &ch->quad.ul) < vfuzz)
  {
   end->ur = ch->quad.ur;
   end->lr = ch->quad.lr;
   return;
  }
 }

 if (hits->len < hits->cap)
  hits->box[hits->len++] = ch->quad;
}
