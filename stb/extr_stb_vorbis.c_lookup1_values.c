
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exp (float) ;
 scalar_t__ floor (int) ;
 scalar_t__ log (float) ;
 int pow (float,int) ;

__attribute__((used)) static int lookup1_values(int entries, int dim)
{
   int r = (int) floor(exp((float) log((float) entries) / dim));
   if ((int) floor(pow((float) r+1, dim)) <= entries)
      ++r;
   if (pow((float) r+1, dim) <= entries)
      return -1;
   if ((int) floor(pow((float) r, dim)) > entries)
      return -1;
   return r;
}
