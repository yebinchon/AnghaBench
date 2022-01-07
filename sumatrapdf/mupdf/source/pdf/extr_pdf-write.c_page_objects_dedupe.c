
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; scalar_t__* object; } ;
typedef TYPE_1__ page_objects ;
typedef int fz_context ;



__attribute__((used)) static void
page_objects_dedupe(fz_context *ctx, page_objects *po)
{
 int i, j;
 int n = po->len-1;

 for (i = 0; i < n; i++)
 {
  if (po->object[i] == po->object[i+1])
   break;
 }
 j = i;
 i++;
 for (; i < n; i++)
 {
  if (po->object[j] != po->object[i])
   po->object[++j] = po->object[i];
 }
 po->len = j+1;
}
