
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int len; TYPE_1__* items; } ;
typedef TYPE_2__ fz_text_span ;
typedef int fz_context ;
struct TYPE_4__ {scalar_t__ ucs; } ;



__attribute__((used)) static int
find_first_char(fz_context *ctx, const fz_text_span *span, int i)
{
 for (; i < span->len; ++i)
  if (span->items[i].ucs >= 0)
   return i;
 return i;
}
