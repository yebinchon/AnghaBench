
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_CLR_ATOMIC (unsigned int,int *) ;
 int CPU_EMPTY (int *) ;
 int CPU_ISSET (unsigned int,int *) ;
 int cpumask ;
 int exit (int) ;
 int fprintf (int ,char*,int) ;
 int stderr ;

__attribute__((used)) static int
vcpu_delete(int vcpu)
{
 if (!CPU_ISSET(((unsigned) vcpu), &cpumask)) {
  fprintf(stderr, "Attempting to delete unknown cpu %d\n", vcpu);
  exit(1);
 }

 CPU_CLR_ATOMIC(((unsigned) vcpu), &cpumask);
 return (CPU_EMPTY(&cpumask));
}
