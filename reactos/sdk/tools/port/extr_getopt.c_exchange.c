
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _getopt_data {int __first_nonopt; int __last_nonopt; int optind; } ;



__attribute__((used)) static void
exchange (char **argv, struct _getopt_data *d)
{
  int bottom = d->__first_nonopt;
  int middle = d->__last_nonopt;
  int top = d->optind;
  char *tem;






  while (top > middle && middle > bottom)
    {
      if (top - middle > middle - bottom)
 {

   int len = middle - bottom;
   int i;


   for (i = 0; i < len; i++)
     {
       tem = argv[bottom + i];
       argv[bottom + i] = argv[top - (middle - bottom) + i];
       argv[top - (middle - bottom) + i] = tem;
     }

   top -= len;
 }
      else
 {

   int len = top - middle;
   int i;


   for (i = 0; i < len; i++)
     {
       tem = argv[bottom + i];
       argv[bottom + i] = argv[middle + i];
       argv[middle + i] = tem;
     }

   bottom += len;
 }
    }



  d->__first_nonopt += (d->optind - d->__last_nonopt);
  d->__last_nonopt = d->optind;
}
