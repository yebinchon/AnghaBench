
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wProcessorArchitecture; int member_0; } ;
typedef TYPE_1__ SYSTEM_INFO ;


 int CPU_ARCH_ARM_32 ;
 int CPU_ARCH_ARM_64 ;
 int CPU_ARCH_UNDEFINED ;
 int CPU_ARCH_X86_64 ;
 int GetNativeSystemInfo (TYPE_1__*) ;





int GetCpuArch(void)
{
 SYSTEM_INFO info = { 0 };
 GetNativeSystemInfo(&info);
 switch (info.wProcessorArchitecture) {
 case 131:
  return CPU_ARCH_X86_64;
 case 128:
  return CPU_ARCH_X86_64;
 case 129:
  return CPU_ARCH_ARM_64;
 case 130:
  return CPU_ARCH_ARM_32;
 default:
  return CPU_ARCH_UNDEFINED;
 }
}
