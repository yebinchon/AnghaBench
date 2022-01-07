
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct vie {int opsize_override; int addrsize_override; int repz_present; int repnz_present; int segment_override; int rex_present; int rex_w; int rex_r; int rex_x; int rex_b; int addrsize; int opsize; int segment_register; } ;
typedef enum vm_cpu_mode { ____Placeholder_vm_cpu_mode } vm_cpu_mode ;


 int CPU_MODE_64BIT ;
 scalar_t__ segment_override (int,int *) ;
 int vie_advance (struct vie*) ;
 scalar_t__ vie_peek (struct vie*,int*) ;

__attribute__((used)) static int
decode_prefixes(struct vie *vie, enum vm_cpu_mode cpu_mode, int cs_d)
{
 uint8_t x;

 while (1) {
  if (vie_peek(vie, &x))
   return (-1);

  if (x == 0x66)
   vie->opsize_override = 1;
  else if (x == 0x67)
   vie->addrsize_override = 1;
  else if (x == 0xF3)
   vie->repz_present = 1;
  else if (x == 0xF2)
   vie->repnz_present = 1;
  else if (segment_override(x, &vie->segment_register))
   vie->segment_override = 1;
  else
   break;

  vie_advance(vie);
 }
 if (cpu_mode == CPU_MODE_64BIT && x >= 0x40 && x <= 0x4F) {
  vie->rex_present = 1;
  vie->rex_w = x & 0x8 ? 1 : 0;
  vie->rex_r = x & 0x4 ? 1 : 0;
  vie->rex_x = x & 0x2 ? 1 : 0;
  vie->rex_b = x & 0x1 ? 1 : 0;
  vie_advance(vie);
 }




 if (cpu_mode == CPU_MODE_64BIT) {




  vie->addrsize = vie->addrsize_override ? 4 : 8;
  if (vie->rex_w)
   vie->opsize = 8;
  else if (vie->opsize_override)
   vie->opsize = 2;
  else
   vie->opsize = 4;
 } else if (cs_d) {

  vie->addrsize = vie->addrsize_override ? 2 : 4;
  vie->opsize = vie->opsize_override ? 2 : 4;
 } else {

  vie->addrsize = vie->addrsize_override ? 4 : 2;
  vie->opsize = vie->opsize_override ? 4 : 2;
 }
 return (0);
}
