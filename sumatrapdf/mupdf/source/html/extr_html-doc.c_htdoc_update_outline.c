
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; struct TYPE_4__* down; int y; int x; int uri; int page; } ;
typedef TYPE_1__ fz_outline ;
typedef int fz_document ;
typedef int fz_context ;
struct TYPE_5__ {int page; } ;


 TYPE_3__ htdoc_resolve_link (int *,int *,int ,int *,int *) ;

__attribute__((used)) static void
htdoc_update_outline(fz_context *ctx, fz_document *doc, fz_outline *node)
{
 while (node)
 {
  node->page = htdoc_resolve_link(ctx, doc, node->uri, &node->x, &node->y).page;
  htdoc_update_outline(ctx, doc, node->down);
  node = node->next;
 }
}
