
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int code; } ;
struct TYPE_5__ {TYPE_1__ i; } ;
typedef int Opcode ;
typedef TYPE_2__ Instruction ;


 int CHARSETINSTSIZE ;
int sizei (const Instruction *i) {
  switch((Opcode)i->i.code) {
    case 132: case 131: return CHARSETINSTSIZE;
    case 128: return CHARSETINSTSIZE + 1;
    case 129: case 130: case 137: case 135: case 138:
    case 134: case 136: case 133: case 139:
      return 2;
    default: return 1;
  }
}
