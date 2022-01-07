
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int info; int nval; } ;
struct TYPE_14__ {int k; TYPE_1__ u; } ;
typedef TYPE_2__ expdesc ;
struct TYPE_15__ {int nk; } ;
typedef TYPE_3__ FuncState ;


 int MAXINDEXRK ;
 int RKASK (int ) ;





 int boolK (TYPE_3__*,int) ;
 int luaK_exp2anyreg (TYPE_3__*,TYPE_2__*) ;
 int luaK_exp2val (TYPE_3__*,TYPE_2__*) ;
 int luaK_numberK (TYPE_3__*,int ) ;
 int nilK (TYPE_3__*) ;

int luaK_exp2RK (FuncState *fs, expdesc *e) {
  luaK_exp2val(fs, e);
  switch (e->k) {
    case 128:
    case 132:
    case 129: {
      if (fs->nk <= MAXINDEXRK) {
        e->u.info = (e->k == 129) ? nilK(fs) : boolK(fs, (e->k == 128));
        e->k = 131;
        return RKASK(e->u.info);
      }
      else break;
    }
    case 130: {
      e->u.info = luaK_numberK(fs, e->u.nval);
      e->k = 131;

    }
    case 131: {
      if (e->u.info <= MAXINDEXRK)
        return RKASK(e->u.info);
      else break;
    }
    default: break;
  }

  return luaK_exp2anyreg(fs, e);
}
