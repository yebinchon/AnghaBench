
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int nFlags; int nCharOfs; int * clusters; scalar_t__ max_clusters; int * offsets; int * advances; int * vis_attrs; int * glyphs; scalar_t__ max_glyphs; scalar_t__ num_glyphs; int * para; scalar_t__ len; int * reobj; int * style; } ;
struct TYPE_7__ {TYPE_1__ run; } ;
struct TYPE_8__ {TYPE_2__ member; } ;
typedef int ME_Style ;
typedef TYPE_3__ ME_DisplayItem ;


 int ME_AddRefStyle (int *) ;
 TYPE_3__* ME_MakeDI (int ) ;
 int diRun ;

ME_DisplayItem *ME_MakeRun(ME_Style *s, int nFlags)
{
  ME_DisplayItem *item = ME_MakeDI(diRun);
  item->member.run.style = s;
  item->member.run.reobj = ((void*)0);
  item->member.run.nFlags = nFlags;
  item->member.run.nCharOfs = -1;
  item->member.run.len = 0;
  item->member.run.para = ((void*)0);
  item->member.run.num_glyphs = 0;
  item->member.run.max_glyphs = 0;
  item->member.run.glyphs = ((void*)0);
  item->member.run.vis_attrs = ((void*)0);
  item->member.run.advances = ((void*)0);
  item->member.run.offsets = ((void*)0);
  item->member.run.max_clusters = 0;
  item->member.run.clusters = ((void*)0);
  ME_AddRefStyle(s);
  return item;
}
