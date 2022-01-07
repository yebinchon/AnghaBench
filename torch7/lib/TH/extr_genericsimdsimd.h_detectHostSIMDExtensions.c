
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CPUID_AVX2_BIT ;
 int CPUID_AVX_BIT ;
 int CPUID_SSE_BIT ;
 int SIMDExtension_AVX ;
 int SIMDExtension_AVX2 ;
 int SIMDExtension_SSE ;
 int cpuid (int*,int*,int*,int*) ;
 char* getenv (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static inline uint32_t detectHostSIMDExtensions()
{
  uint32_t eax, ebx, ecx, edx;
  uint32_t hostSimdExts = 0x0;
  int TH_NO_AVX = 1, TH_NO_AVX2 = 1, TH_NO_SSE = 1;
  char *evar;

  evar = getenv("TH_NO_AVX2");
  if (evar == ((void*)0) || strncmp(evar, "1", 2) != 0)
    TH_NO_AVX2 = 0;


  eax = 0x7;
  ecx = 0x0;
  cpuid(&eax, &ebx, &ecx, &edx);
  if ((ebx & CPUID_AVX2_BIT) && TH_NO_AVX2 == 0) {
    hostSimdExts |= SIMDExtension_AVX2;
  }


  eax = 0x1;
  cpuid(&eax, &ebx, &ecx, &edx);

  evar = getenv("TH_NO_AVX");
  if (evar == ((void*)0) || strncmp(evar, "1", 2) != 0)
    TH_NO_AVX = 0;
  if (ecx & CPUID_AVX_BIT && TH_NO_AVX == 0) {
    hostSimdExts |= SIMDExtension_AVX;
  }

  evar = getenv("TH_NO_SSE");
  if (evar == ((void*)0) || strncmp(evar, "1", 2) != 0)
    TH_NO_SSE = 0;
  if (edx & CPUID_SSE_BIT && TH_NO_SSE == 0) {
    hostSimdExts |= SIMDExtension_SSE;
  }

  return hostSimdExts;
}
