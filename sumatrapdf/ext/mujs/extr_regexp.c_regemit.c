
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int opcode; int * y; int x; int * cc; scalar_t__ c; scalar_t__ n; } ;
struct TYPE_5__ {int end; } ;
typedef TYPE_1__ Reprog ;
typedef TYPE_2__ Reinst ;



__attribute__((used)) static Reinst *emit(Reprog *prog, int opcode)
{
 Reinst *inst = prog->end++;
 inst->opcode = opcode;
 inst->n = 0;
 inst->c = 0;
 inst->cc = ((void*)0);
 inst->x = inst->y = ((void*)0);
 return inst;
}
