
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int p; } ;
struct TYPE_8__ {int savedpc; } ;
struct TYPE_9__ {TYPE_1__ l; } ;
struct TYPE_10__ {TYPE_2__ u; } ;
typedef TYPE_3__ CallInfo ;


 TYPE_6__* ci_func (TYPE_3__*) ;
 int isLua (TYPE_3__*) ;
 int lua_assert (int ) ;
 int pcRel (int ,int ) ;

__attribute__((used)) static int currentpc (CallInfo *ci) {
  lua_assert(isLua(ci));
  return pcRel(ci->u.l.savedpc, ci_func(ci)->p);
}
