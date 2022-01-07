
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int page; struct TYPE_4__* next; struct TYPE_4__* down; scalar_t__ is_open; } ;
typedef TYPE_1__ fz_outline ;
struct TYPE_5__ {int page; } ;


 int ctx ;
 TYPE_2__ currentpage ;
 int doc ;
 int fz_count_chapters (int ,int ) ;

__attribute__((used)) static int count_outline(fz_outline *node, int end)
{
 int is_selected, n, p;
 int count = 0;
 while (node)
 {
  p = node->page;
  count += 1;
  n = end;
  if (node->next && node->next->page >= 0)
   n = node->next->page;
  is_selected = 0;
  if (fz_count_chapters(ctx, doc) == 1)
   is_selected = (p>=0) && (currentpage.page == p || (currentpage.page > p && currentpage.page < n));
  if (node->down && (node->is_open || is_selected))
   count += count_outline(node->down, end);
  node = node->next;
 }
 return count;
}
