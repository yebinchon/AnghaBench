
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int sb_add (int*,int) ;
 int sb_count (int*) ;
 int sb_free (int*) ;
 int sb_push (int*,int) ;

int main(int arg, char **argv)
{
   int i;
   int *arr = ((void*)0);

   for (i=0; i < 1000000; ++i)
      sb_push(arr, i);

   assert(sb_count(arr) == 1000000);
   for (i=0; i < 1000000; ++i)
      assert(arr[i] == i);

   sb_free(arr);
   arr = ((void*)0);

   for (i=0; i < 1000; ++i)
      sb_add(arr, 1000);
   assert(sb_count(arr) == 1000000);

   return 0;
}
