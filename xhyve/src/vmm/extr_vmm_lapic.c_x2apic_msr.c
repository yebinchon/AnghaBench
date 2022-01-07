
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static bool
x2apic_msr(u_int msr)
{
 if (msr >= 0x800 && msr <= 0xBFF)
  return (TRUE);
 else
  return (FALSE);
}
