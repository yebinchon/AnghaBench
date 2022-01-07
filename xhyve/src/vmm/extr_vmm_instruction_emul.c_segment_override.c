
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int VM_REG_GUEST_CS ;
 int VM_REG_GUEST_DS ;
 int VM_REG_GUEST_ES ;
 int VM_REG_GUEST_FS ;
 int VM_REG_GUEST_GS ;
 int VM_REG_GUEST_SS ;

__attribute__((used)) static bool
segment_override(uint8_t x, int *seg)
{

 switch (x) {
 case 0x2E:
  *seg = VM_REG_GUEST_CS;
  break;
 case 0x36:
  *seg = VM_REG_GUEST_SS;
  break;
 case 0x3E:
  *seg = VM_REG_GUEST_DS;
  break;
 case 0x26:
  *seg = VM_REG_GUEST_ES;
  break;
 case 0x64:
  *seg = VM_REG_GUEST_FS;
  break;
 case 0x65:
  *seg = VM_REG_GUEST_GS;
  break;
 default:
  return (0);
 }
 return (1);
}
