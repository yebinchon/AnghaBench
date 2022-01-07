
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct list {int dummy; } ;
struct TYPE_7__ {int page; int is_open; struct TYPE_7__* next; struct TYPE_7__* down; int y; int x; int uri; int title; } ;
typedef TYPE_1__ fz_outline ;
struct TYPE_8__ {int page; } ;


 int ctx ;
 TYPE_3__ currentpage ;
 int doc ;
 int fz_count_chapters (int ,int ) ;
 TYPE_3__ fz_resolve_link (int ,int ,int ,int *,int *) ;
 int jump_to_location_xy (TYPE_3__,int ,int ) ;
 int jump_to_page_xy (int,int ,int ) ;
 scalar_t__ ui_tree_item (struct list*,TYPE_1__*,int ,int,int,int,int*) ;

__attribute__((used)) static void do_outline_imp(struct list *list, int end, fz_outline *node, int depth)
{
 int is_selected, was_open, n;

 while (node)
 {
  int p = node->page;
  n = end;
  if (node->next && node->next->page >= 0)
   n = node->next->page;

  was_open = node->is_open;
  is_selected = 0;
  if (fz_count_chapters(ctx, doc) == 1)
   is_selected = (p>=0) && (currentpage.page == p || (currentpage.page > p && currentpage.page < n));
  if (ui_tree_item(list, node, node->title, is_selected, depth, !!node->down, &node->is_open))
  {
   if (p < 0)
   {
    currentpage = fz_resolve_link(ctx, doc, node->uri, &node->x, &node->y);
    jump_to_location_xy(currentpage, node->x, node->y);
   }
   else
   {
    jump_to_page_xy(p, node->x, node->y);
   }
  }

  if (node->down && (was_open || is_selected))
   do_outline_imp(list, n, node->down, depth + 1);
  node = node->next;
 }
}
