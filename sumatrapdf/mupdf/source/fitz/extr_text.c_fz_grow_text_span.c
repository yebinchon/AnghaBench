
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cap; int len; int items; } ;
typedef TYPE_1__ fz_text_span ;
typedef int fz_context ;


 int fz_realloc_array (int *,int ,int,int ) ;
 int fz_text_item ;

__attribute__((used)) static void
fz_grow_text_span(fz_context *ctx, fz_text_span *span, int n)
{
 int new_cap = span->cap;
 if (span->len + n < new_cap)
  return;
 while (span->len + n > new_cap)
  new_cap = new_cap + 36;
 span->items = fz_realloc_array(ctx, span->items, new_cap, fz_text_item);
 span->cap = new_cap;
}
