
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int info; } ;
struct TYPE_9__ {TYPE_1__ s; } ;
struct TYPE_10__ {int k; void* t; int f; TYPE_2__ u; } ;
typedef TYPE_3__ expdesc ;
typedef int FuncState ;


 void* NO_JUMP ;




 int invertjump (int *,TYPE_3__*) ;
 int jumponcond (int *,TYPE_3__*,int ) ;
 int luaK_concat (int *,int *,int) ;
 int luaK_dischargevars (int *,TYPE_3__*) ;
 int luaK_patchtohere (int *,void*) ;

void luaK_goiftrue (FuncState *fs, expdesc *e) {
  int pc;
  luaK_dischargevars(fs, e);
  switch (e->k) {
    case 130: case 129: case 128: {
      pc = NO_JUMP;
      break;
    }
    case 131: {
      invertjump(fs, e);
      pc = e->u.s.info;
      break;
    }
    default: {
      pc = jumponcond(fs, e, 0);
      break;
    }
  }
  luaK_concat(fs, &e->f, pc);
  luaK_patchtohere(fs, e->t);
  e->t = NO_JUMP;
}
