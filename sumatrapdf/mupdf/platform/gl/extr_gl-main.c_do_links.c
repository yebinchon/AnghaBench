
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int fz_rect ;
typedef int fz_location ;
struct TYPE_7__ {struct TYPE_7__* next; int uri; int rect; } ;
typedef TYPE_1__ fz_link ;
struct TYPE_8__ {int y1; int x1; int y0; int x0; } ;
typedef TYPE_2__ fz_irect ;
struct TYPE_9__ {TYPE_1__* hot; scalar_t__ down; TYPE_1__* active; } ;


 int GL_BLEND ;
 int GL_ONE ;
 int GL_ONE_MINUS_SRC_ALPHA ;
 int ctx ;
 int doc ;
 TYPE_2__ fz_irect_from_rect (int ) ;
 scalar_t__ fz_is_external_link (int ,int ) ;
 int fz_resolve_link (int ,int ,int ,float*,float*) ;
 int fz_transform_rect (int ,int ) ;
 int glBlendFunc (int ,int ) ;
 int glColor4f (int ,int ,int,float) ;
 int glDisable (int ) ;
 int glEnable (int ) ;
 int glRectf (int ,int ,int ,int ) ;
 int jump_to_location_xy (int ,float,float) ;
 int open_browser (int ) ;
 scalar_t__ showlinks ;
 int tooltip ;
 TYPE_4__ ui ;
 scalar_t__ ui_mouse_inside (TYPE_2__) ;
 int view_page_ctm ;

__attribute__((used)) static void do_links(fz_link *link)
{
 fz_rect bounds;
 fz_irect area;
 float link_x, link_y;

 glBlendFunc(GL_ONE, GL_ONE_MINUS_SRC_ALPHA);
 glEnable(GL_BLEND);

 while (link)
 {
  bounds = link->rect;
  bounds = fz_transform_rect(link->rect, view_page_ctm);
  area = fz_irect_from_rect(bounds);

  if (ui_mouse_inside(area))
  {
   tooltip = link->uri;
   ui.hot = link;
   if (!ui.active && ui.down)
    ui.active = link;
  }

  if (ui.hot == link || showlinks)
  {
   if (ui.active == link && ui.hot == link)
    glColor4f(0, 0, 1, 0.4f);
   else if (ui.hot == link)
    glColor4f(0, 0, 1, 0.2f);
   else
    glColor4f(0, 0, 1, 0.1f);
   glRectf(area.x0, area.y0, area.x1, area.y1);
  }

  if (ui.active == link && !ui.down)
  {
   if (ui.hot == link)
   {
    if (fz_is_external_link(ctx, link->uri))
     open_browser(link->uri);
    else
    {
     fz_location loc = fz_resolve_link(ctx, doc, link->uri, &link_x, &link_y);
     jump_to_location_xy(loc, link_x, link_y);
    }
   }
  }

  link = link->next;
 }

 glDisable(GL_BLEND);
}
