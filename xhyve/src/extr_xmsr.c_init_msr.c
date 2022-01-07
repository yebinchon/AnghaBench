
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 int do_cpuid (int ,scalar_t__*) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;

int
init_msr(void)
{
 u_int regs[4];
 u_int cpu_vendor[4];

 do_cpuid(0, regs);
 cpu_vendor[0] = regs[1];
 cpu_vendor[1] = regs[3];
 cpu_vendor[2] = regs[2];
 cpu_vendor[3] = 0;

 if (strcmp(((char *) cpu_vendor), "GenuineIntel") == 0) {
  return 0;
 } else {
  fprintf(stderr, "Unknown cpu vendor \"%s\"\n", ((char *) cpu_vendor));
  return (-1);
 }
}
