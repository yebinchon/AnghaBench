
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int y1; int y0; int x1; int x0; } ;
struct TYPE_8__ {void* doc; TYPE_1__ rect; struct TYPE_8__* next; } ;
typedef TYPE_2__ fz_link ;
struct TYPE_9__ {scalar_t__* page_margin; int page_h; int root; } ;
typedef TYPE_3__ fz_html ;
typedef int fz_context ;


 size_t L ;
 size_t T ;
 int fz_dirname (char*,char const*,int) ;
 TYPE_2__* load_link_box (int *,int ,int *,int,int ,char*,char const*) ;

fz_link *
fz_load_html_links(fz_context *ctx, fz_html *html, int page, const char *file, void *doc)
{
 fz_link *link, *head;
 char dir[2048];
 fz_dirname(dir, file, sizeof dir);

 head = load_link_box(ctx, html->root, ((void*)0), page, html->page_h, dir, file);

 for (link = head; link; link = link->next)
 {

  link->rect.x0 += html->page_margin[L];
  link->rect.x1 += html->page_margin[L];
  link->rect.y0 += html->page_margin[T];
  link->rect.y1 += html->page_margin[T];


  link->doc = doc;
 }

 return head;
}
