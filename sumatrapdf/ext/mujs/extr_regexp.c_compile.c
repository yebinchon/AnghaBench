
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int n; int cc; int c; struct TYPE_10__* y; struct TYPE_10__* x; } ;
struct TYPE_9__ {int type; int m; int n; int cc; int c; struct TYPE_9__* x; int ng; struct TYPE_9__* y; } ;
struct TYPE_8__ {int flags; TYPE_3__* end; } ;
typedef TYPE_1__ Reprog ;
typedef TYPE_2__ Renode ;
typedef TYPE_3__ Reinst ;


 int I_ANY ;
 int I_BOL ;
 int I_CCLASS ;
 int I_CHAR ;
 int I_END ;
 int I_EOL ;
 int I_JUMP ;
 int I_LPAR ;
 int I_NCCLASS ;
 int I_NLA ;
 int I_NWORD ;
 int I_PLA ;
 int I_REF ;
 int I_RPAR ;
 int I_SPLIT ;
 int I_WORD ;
 int REG_ICASE ;
 int REPINF ;
 int canon (int ) ;
 TYPE_3__* emit (TYPE_1__*,int ) ;

__attribute__((used)) static void compile(Reprog *prog, Renode *node)
{
 Reinst *inst, *split, *jump;
 int i;

loop:
 if (!node)
  return;

 switch (node->type) {
 case 139:
  compile(prog, node->x);
  node = node->y;
  goto loop;

 case 142:
  split = emit(prog, I_SPLIT);
  compile(prog, node->x);
  jump = emit(prog, I_JUMP);
  compile(prog, node->y);
  split->x = split + 1;
  split->y = jump + 1;
  jump->x = prog->end;
  break;

 case 129:
  inst = ((void*)0);
  for (i = 0; i < node->m; ++i) {
   inst = prog->end;
   compile(prog, node->x);
  }
  if (node->m == node->n)
   break;
  if (node->n < REPINF) {
   for (i = node->m; i < node->n; ++i) {
    split = emit(prog, I_SPLIT);
    compile(prog, node->x);
    if (node->ng) {
     split->y = split + 1;
     split->x = prog->end;
    } else {
     split->x = split + 1;
     split->y = prog->end;
    }
   }
  } else if (node->m == 0) {
   split = emit(prog, I_SPLIT);
   compile(prog, node->x);
   jump = emit(prog, I_JUMP);
   if (node->ng) {
    split->y = split + 1;
    split->x = prog->end;
   } else {
    split->x = split + 1;
    split->y = prog->end;
   }
   jump->x = split;
  } else {
   split = emit(prog, I_SPLIT);
   if (node->ng) {
    split->y = inst;
    split->x = prog->end;
   } else {
    split->x = inst;
    split->y = prog->end;
   }
  }
  break;

 case 140: emit(prog, I_BOL); break;
 case 136: emit(prog, I_EOL); break;
 case 128: emit(prog, I_WORD); break;
 case 133: emit(prog, I_NWORD); break;

 case 132:
  inst = emit(prog, I_LPAR);
  inst->n = node->n;
  compile(prog, node->x);
  inst = emit(prog, I_RPAR);
  inst->n = node->n;
  break;
 case 131:
  split = emit(prog, I_PLA);
  compile(prog, node->x);
  emit(prog, I_END);
  split->x = split + 1;
  split->y = prog->end;
  break;
 case 134:
  split = emit(prog, I_NLA);
  compile(prog, node->x);
  emit(prog, I_END);
  split->x = split + 1;
  split->y = prog->end;
  break;

 case 141:
  emit(prog, I_ANY);
  break;
 case 137:
  inst = emit(prog, I_CHAR);
  inst->c = (prog->flags & REG_ICASE) ? canon(node->c) : node->c;
  break;
 case 138:
  inst = emit(prog, I_CCLASS);
  inst->cc = node->cc;
  break;
 case 135:
  inst = emit(prog, I_NCCLASS);
  inst->cc = node->cc;
  break;
 case 130:
  inst = emit(prog, I_REF);
  inst->n = node->n;
  break;
 }
}
