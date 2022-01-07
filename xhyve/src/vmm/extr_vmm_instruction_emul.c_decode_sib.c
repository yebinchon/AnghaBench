
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct vie {int mod; scalar_t__ rm; int ss; int index; int base; int rex_x; int rex_b; int disp_bytes; int base_register; int index_register; int scale; } ;


 int VIE_MOD_DIRECT ;
 int VIE_MOD_INDIRECT ;


 scalar_t__ VIE_RM_SIB ;
 int VM_REG_LAST ;
 scalar_t__* gpr_map ;
 int vie_advance (struct vie*) ;
 scalar_t__ vie_peek (struct vie*,int*) ;

__attribute__((used)) static int
decode_sib(struct vie *vie)
{
 uint8_t x;


 if (vie->mod == VIE_MOD_DIRECT || vie->rm != VIE_RM_SIB)
  return (0);

 if (vie_peek(vie, &x))
  return (-1);


 vie->ss = (x >> 6) & 0x3;
 vie->index = (x >> 3) & 0x7;
 vie->base = (x >> 0) & 0x7;


 vie->index |= vie->rex_x << 3;
 vie->base |= vie->rex_b << 3;

 switch (vie->mod) {
 case 128:
  vie->disp_bytes = 1;
  break;
 case 129:
  vie->disp_bytes = 4;
  break;
 }

 if (vie->mod == VIE_MOD_INDIRECT &&
     (vie->base == 5 || vie->base == 13)) {
  vie->disp_bytes = 4;
 } else {
  vie->base_register = (int) gpr_map[vie->base];
 }
 if (vie->index != 4)
  vie->index_register = (int) gpr_map[vie->index];


 if (vie->index_register < VM_REG_LAST)
  vie->scale = (uint8_t) (1 << vie->ss);

 vie_advance(vie);

 return (0);
}
