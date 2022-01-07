
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int count ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

void c(int truth, char *error)
{
   if (!truth) {
      fprintf(stderr, "Test failed: %s\n", error);
      ++count;
   }
}
