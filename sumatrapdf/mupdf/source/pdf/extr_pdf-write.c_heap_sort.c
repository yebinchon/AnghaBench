
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void
heap_sort(int *list, int n, const int *val, int (*ge)(int, int))
{
 int i, j;
 for (i = 1; i < n; i++)
 {

  j = i;
  while (j != 0)
  {
   int tmp;
   int k = (j-1)>>1;
   if (ge(val[list[k]], val[list[j]]))
    break;
   tmp = list[k];
   list[k] = list[j];
   list[j] = tmp;
   j = k;
  }
 }
 for (i = n-1; i > 0; i--)
 {


  int tmp = list[0];
  list[0] = list[i];
  list[i] = tmp;


  j = 0;
  while (1)
  {

   int k = (j+1)*2-1;

   if (k > i-1)
    break;

   if (k < i-1 && ge(val[list[k+1]], val[list[k]]))
    k++;


   if (ge(val[list[j]], val[list[k]]))
    break;
   tmp = list[k];
   list[k] = list[j];
   list[j] = tmp;
   j = k;
  }
 }
}
