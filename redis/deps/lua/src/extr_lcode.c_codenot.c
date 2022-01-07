
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int info; } ;
struct TYPE_10__ {TYPE_1__ s; } ;
struct TYPE_11__ {int k; int f; int t; TYPE_2__ u; } ;
typedef TYPE_3__ expdesc ;
typedef int FuncState ;


 int OP_NOT ;
 int discharge2anyreg (int *,TYPE_3__*) ;
 int freeexp (int *,TYPE_3__*) ;
 int invertjump (int *,TYPE_3__*) ;
 int luaK_codeABC (int *,int ,int ,int ,int ) ;
 int luaK_dischargevars (int *,TYPE_3__*) ;
 int lua_assert (int ) ;
 int removevalues (int *,int) ;

__attribute__((used)) static void codenot (FuncState *fs, expdesc *e) {
  luaK_dischargevars(fs, e);
  switch (e->k) {
    case 131: case 135: {
      e->k = 128;
      break;
    }
    case 133: case 132: case 128: {
      e->k = 135;
      break;
    }
    case 134: {
      invertjump(fs, e);
      break;
    }
    case 129:
    case 130: {
      discharge2anyreg(fs, e);
      freeexp(fs, e);
      e->u.s.info = luaK_codeABC(fs, OP_NOT, 0, e->u.s.info, 0);
      e->k = 129;
      break;
    }
    default: {
      lua_assert(0);
      break;
    }
  }

  { int temp = e->f; e->f = e->t; e->t = temp; }
  removevalues(fs, e->f);
  removevalues(fs, e->t);
}
