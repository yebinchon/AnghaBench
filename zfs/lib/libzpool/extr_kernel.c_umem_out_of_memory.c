
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static int
umem_out_of_memory(void)
{
 char errmsg[] = "out of memory -- generating core dump\n";

 (void) fprintf(stderr, "%s", errmsg);
 abort();
 return (0);
}
