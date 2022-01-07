
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xps_document ;
struct TYPE_4__ {struct TYPE_4__* down; struct TYPE_4__* next; } ;
typedef TYPE_1__ fz_outline ;
typedef int fz_context ;



__attribute__((used)) static fz_outline *
xps_lookup_last_outline_at_level(fz_context *ctx, xps_document *doc, fz_outline *node, int level, int target_level)
{
 while (node->next)
  node = node->next;
 if (level == target_level || !node->down)
  return node;
 return xps_lookup_last_outline_at_level(ctx, doc, node->down, level + 1, target_level);
}
