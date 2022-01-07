
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* name; struct TYPE_5__* next; } ;
typedef TYPE_1__ xps_target ;
struct TYPE_6__ {TYPE_1__* target; } ;
typedef TYPE_2__ xps_document ;
typedef int fz_context ;


 int fz_free (int *,TYPE_1__*) ;

__attribute__((used)) static void
xps_drop_link_targets(fz_context *ctx, xps_document *doc)
{
 xps_target *target = doc->target, *next;
 while (target)
 {
  next = target->next;
  fz_free(ctx, target->name);
  fz_free(ctx, target);
  target = next;
 }
}
