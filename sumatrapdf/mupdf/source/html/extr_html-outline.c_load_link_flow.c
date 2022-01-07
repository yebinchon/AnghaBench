
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {float x0; int y0; float x1; scalar_t__ y1; } ;
typedef TYPE_1__ fz_rect ;
struct TYPE_10__ {struct TYPE_10__* next; } ;
typedef TYPE_2__ fz_link ;
struct TYPE_11__ {float y; float x; float w; scalar_t__ h; scalar_t__ type; struct TYPE_11__* next; int box; } ;
typedef TYPE_3__ fz_html_flow ;
typedef int fz_context ;


 scalar_t__ FLOW_IMAGE ;
 char* box_href (int ) ;
 int fz_cleanname (char*) ;
 TYPE_2__* fz_new_link (int *,TYPE_1__,int *,char const*) ;
 int fz_strlcat (char*,char const*,int) ;
 int fz_strlcpy (char*,char const*,int) ;
 int fz_urldecode (char*) ;
 scalar_t__ has_same_href (int ,char const*) ;
 scalar_t__ is_internal_uri (char const*) ;

__attribute__((used)) static fz_link *load_link_flow(fz_context *ctx, fz_html_flow *flow, fz_link *head, int page, float page_h, const char *dir, const char *file)
{
 fz_link *link;
 fz_html_flow *next;
 char path[2048];
 fz_rect bbox;
 const char *dest;
 const char *href;
 float end;

 while (flow)
 {
  href = box_href(flow->box);
  next = flow->next;
  if (href && (int)(flow->y / page_h) == page)
  {

   end = flow->x + flow->w;
   while (next &&
     next->y == flow->y &&
     next->h == flow->h &&
     has_same_href(next->box, href))
   {
    end = next->x + next->w;
    next = next->next;
   }

   bbox.x0 = flow->x;
   bbox.y0 = flow->y - page * page_h;
   bbox.x1 = end;
   bbox.y1 = bbox.y0 + flow->h;
   if (flow->type != FLOW_IMAGE)
   {

    bbox.y0 -= 0.8f * flow->h;
    bbox.y1 -= 0.8f * flow->h;
   }

   if (is_internal_uri(href))
   {
    if (href[0] == '#')
    {
     fz_strlcpy(path, file, sizeof path);
     fz_strlcat(path, href, sizeof path);
    }
    else
    {
     fz_strlcpy(path, dir, sizeof path);
     fz_strlcat(path, "/", sizeof path);
     fz_strlcat(path, href, sizeof path);
    }
    fz_urldecode(path);
    fz_cleanname(path);

    dest = path;
   }
   else
   {
    dest = href;
   }

   link = fz_new_link(ctx, bbox, ((void*)0), dest);
   link->next = head;
   head = link;
  }
  flow = next;
 }
 return head;
}
