
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int* object; } ;
typedef TYPE_1__ page_objects ;
typedef int fz_context ;



__attribute__((used)) static void
page_objects_sort(fz_context *ctx, page_objects *po)
{
 int i, j;
 int n = po->len;



 for (i = 1; i < n; i++)
 {

  j = i;
  while (j != 0)
  {
   int tmp;
   int k = (j-1)>>1;
   if (po->object[k] >= po->object[j])
    break;
   tmp = po->object[k];
   po->object[k] = po->object[j];
   po->object[j] = tmp;
   j = k;
  }
 }




 for (i = n-1; i > 0; i--)
 {


  int tmp = po->object[0];
  po->object[0] = po->object[i];
  po->object[i] = tmp;


  j = 0;
  while (1)
  {

   int k = (j+1)*2-1;

   if (k > i-1)
    break;

   if (k < i-1 && po->object[k] < po->object[k+1])
    k++;


   if (po->object[j] > po->object[k])
    break;
   tmp = po->object[k];
   po->object[k] = po->object[j];
   po->object[j] = tmp;
   j = k;
  }
 }
}
