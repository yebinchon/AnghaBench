
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int CPUID2_SSE42 ;
 int do_cpuid (int,int*) ;

__attribute__((used)) static int
sse42_supported(void)
{
 u_int cpu_registers[4], ecx;

 do_cpuid(1, cpu_registers);

 ecx = cpu_registers[2];

 return ((ecx & CPUID2_SSE42) != 0);
}
