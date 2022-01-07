
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_2__ {scalar_t__ op_type; } ;
struct vie {TYPE_1__ op; } ;


 scalar_t__ VIE_OP_TYPE_NONE ;
 TYPE_1__* two_byte_opcodes ;
 int vie_advance (struct vie*) ;
 scalar_t__ vie_peek (struct vie*,size_t*) ;

__attribute__((used)) static int
decode_two_byte_opcode(struct vie *vie)
{
 uint8_t x;

 if (vie_peek(vie, &x))
  return (-1);

 vie->op = two_byte_opcodes[x];

 if (vie->op.op_type == VIE_OP_TYPE_NONE)
  return (-1);

 vie_advance(vie);
 return (0);
}
