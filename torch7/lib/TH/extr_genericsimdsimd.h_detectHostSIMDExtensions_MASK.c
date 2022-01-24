#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;

/* Variables and functions */
 int CPUID_AVX2_BIT ; 
 int CPUID_AVX_BIT ; 
 int CPUID_SSE_BIT ; 
 int SIMDExtension_AVX ; 
 int SIMDExtension_AVX2 ; 
 int SIMDExtension_SSE ; 
 int /*<<< orphan*/  FUNC0 (int*,int*,int*,int*) ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 

__attribute__((used)) static inline uint32_t FUNC3()
{
  uint32_t eax, ebx, ecx, edx;
  uint32_t hostSimdExts = 0x0;
  int TH_NO_AVX = 1, TH_NO_AVX2 = 1, TH_NO_SSE = 1;
  char *evar;

  evar = FUNC1("TH_NO_AVX2");
  if (evar == NULL || FUNC2(evar, "1", 2) != 0)
    TH_NO_AVX2 = 0;

  // Check for AVX2. Requires separate CPUID
  eax = 0x7;
  ecx = 0x0;
  FUNC0(&eax, &ebx, &ecx, &edx);
  if ((ebx & CPUID_AVX2_BIT) && TH_NO_AVX2 == 0) {
    hostSimdExts |= SIMDExtension_AVX2;
  }

  // Detect and enable AVX and SSE
  eax = 0x1;
  FUNC0(&eax, &ebx, &ecx, &edx);

  evar = FUNC1("TH_NO_AVX");
  if (evar == NULL || FUNC2(evar, "1", 2) != 0)
    TH_NO_AVX = 0;
  if (ecx & CPUID_AVX_BIT && TH_NO_AVX == 0) {
    hostSimdExts |= SIMDExtension_AVX;
  }

  evar = FUNC1("TH_NO_SSE");
  if (evar == NULL || FUNC2(evar, "1", 2) != 0)
    TH_NO_SSE = 0;
  if (edx & CPUID_SSE_BIT && TH_NO_SSE == 0) {
    hostSimdExts |= SIMDExtension_SSE;
  }

  return hostSimdExts;
}