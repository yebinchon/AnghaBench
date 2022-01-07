
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* uri; struct TYPE_5__* next; int refs; } ;
typedef TYPE_1__ fz_link ;
typedef int fz_context ;


 scalar_t__ fz_drop_imp (int *,TYPE_1__*,int *) ;
 int fz_free (int *,TYPE_1__*) ;

void
fz_drop_link(fz_context *ctx, fz_link *link)
{
 while (fz_drop_imp(ctx, link, &link->refs))
 {
  fz_link *next = link->next;
  fz_free(ctx, link->uri);
  fz_free(ctx, link);
  link = next;
 }
}
