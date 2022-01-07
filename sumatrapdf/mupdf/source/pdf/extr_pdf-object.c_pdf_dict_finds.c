
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int flags; } ;
typedef TYPE_2__ pdf_obj ;
typedef int fz_context ;
struct TYPE_8__ {int len; TYPE_1__* items; } ;
struct TYPE_6__ {int k; } ;


 TYPE_4__* DICT (TYPE_2__*) ;
 int PDF_FLAGS_SORTED ;
 int pdf_to_name (int *,int ) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static int
pdf_dict_finds(fz_context *ctx, pdf_obj *obj, const char *key)
{
 int len = DICT(obj)->len;
 if ((obj->flags & PDF_FLAGS_SORTED) && len > 0)
 {
  int l = 0;
  int r = len - 1;

  if (strcmp(pdf_to_name(ctx, DICT(obj)->items[r].k), key) < 0)
  {
   return -1 - (r+1);
  }

  while (l <= r)
  {
   int m = (l + r) >> 1;
   int c = -strcmp(pdf_to_name(ctx, DICT(obj)->items[m].k), key);
   if (c < 0)
    r = m - 1;
   else if (c > 0)
    l = m + 1;
   else
    return m;
  }
  return -1 - l;
 }

 else
 {
  int i;
  for (i = 0; i < len; i++)
   if (strcmp(pdf_to_name(ctx, DICT(obj)->items[i].k), key) == 0)
    return i;

  return -1 - len;
 }
}
