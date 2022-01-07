
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x; int y; int width; int height; } ;
typedef int GR_REGION_ID ;


 int GrNewRegion () ;
 int GrSetGCRegion (int ,int ) ;
 int GrUnionRectWithRegion (int ,TYPE_1__*) ;
 TYPE_1__ g_clip ;
 int g_gc ;

void ui_set_clip(int x, int y, int cx, int cy)
{
  GR_REGION_ID region;

  g_clip.x = x;
  g_clip.y = y;
  g_clip.width = cx;
  g_clip.height = cy;
  region = GrNewRegion();
  GrUnionRectWithRegion(region, &g_clip);
  GrSetGCRegion(g_gc, region);


}
