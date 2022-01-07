
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int __cpuid (int *,int ) ;
 int __get_cpuid (int ,int *,int *,int *,int *) ;

__attribute__((used)) static inline void cpuid(uint32_t *eax, uint32_t *ebx, uint32_t *ecx, uint32_t *edx)
{
  uint32_t a = *eax, b, c = *ecx, d;
  asm volatile ( "cpuid\n\t"
   : "+a"(a), "=b"(b), "+c"(c), "=d"(d) );
  *eax = a;
  *ebx = b;
  *ecx = c;
  *edx = d;

}
