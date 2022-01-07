
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int const vt; void* idx; void* t; } ;
struct TYPE_7__ {TYPE_1__ ind; void* info; } ;
struct TYPE_8__ {int k; TYPE_2__ u; } ;
typedef TYPE_3__ expdesc ;
typedef int OpCode ;
typedef int FuncState ;


 int OP_GETTABLE ;
 int OP_GETTABUP ;
 int OP_GETUPVAL ;



 int VNONRELOC ;
 void* VRELOCABLE ;


 int freereg (int *,void*) ;
 void* luaK_codeABC (int *,int ,int ,void*,void*) ;
 int luaK_setoneret (int *,TYPE_3__*) ;
 int lua_assert (int) ;

void luaK_dischargevars (FuncState *fs, expdesc *e) {
  switch (e->k) {
    case 130: {
      e->k = VNONRELOC;
      break;
    }
    case 129: {
      e->u.info = luaK_codeABC(fs, OP_GETUPVAL, 0, e->u.info, 0);
      e->k = VRELOCABLE;
      break;
    }
    case 131: {
      OpCode op;
      freereg(fs, e->u.ind.idx);
      if (e->u.ind.vt == 130) {
        freereg(fs, e->u.ind.t);
        op = OP_GETTABLE;
      }
      else {
        lua_assert(e->u.ind.vt == 129);
        op = OP_GETTABUP;
      }
      e->u.info = luaK_codeABC(fs, op, 0, e->u.ind.t, e->u.ind.idx);
      e->k = VRELOCABLE;
      break;
    }
    case 128: case 132: {
      luaK_setoneret(fs, e);
      break;
    }
    default: break;
  }
}
