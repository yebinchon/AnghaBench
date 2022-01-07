
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static __inline uint64_t rdtsc(void)
{
 unsigned a, d;
 __asm__ __volatile__ ("cpuid");
 __asm__ __volatile__ ("rdtsc" : "=a" (a), "=d" (d));

 return (((uint64_t) a) | (((uint64_t) d) << 32));
}
