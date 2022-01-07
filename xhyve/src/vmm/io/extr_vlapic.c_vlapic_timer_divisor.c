
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
 int xhyve_abort (char*,int) ;

__attribute__((used)) static int
vlapic_timer_divisor(uint32_t dcr)
{
 switch (dcr & 0xB) {
 case 135:
  return (1);
 case 132:
  return (2);
 case 130:
  return (4);
 case 128:
  return (8);
 case 133:
  return (16);
 case 131:
  return (32);
 case 129:
  return (64);
 case 134:
  return (128);
 default:
  xhyve_abort("vlapic_timer_divisor: invalid dcr 0x%08x\n", dcr);
 }
}
