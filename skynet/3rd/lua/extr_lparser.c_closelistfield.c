
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ k; } ;
struct ConsControl {scalar_t__ tostore; int na; TYPE_1__* t; TYPE_3__ v; } ;
struct TYPE_5__ {int info; } ;
struct TYPE_4__ {TYPE_2__ u; } ;
typedef int FuncState ;


 scalar_t__ LFIELDS_PER_FLUSH ;
 scalar_t__ VVOID ;
 int luaK_exp2nextreg (int *,TYPE_3__*) ;
 int luaK_setlist (int *,int ,int ,scalar_t__) ;

__attribute__((used)) static void closelistfield (FuncState *fs, struct ConsControl *cc) {
  if (cc->v.k == VVOID) return;
  luaK_exp2nextreg(fs, &cc->v);
  cc->v.k = VVOID;
  if (cc->tostore == LFIELDS_PER_FLUSH) {
    luaK_setlist(fs, cc->t->u.info, cc->na, cc->tostore);
    cc->tostore = 0;
  }
}
