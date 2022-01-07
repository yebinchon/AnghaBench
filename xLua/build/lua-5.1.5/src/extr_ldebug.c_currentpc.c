
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int savedpc; TYPE_3__* ci; } ;
typedef TYPE_2__ lua_State ;
struct TYPE_9__ {int p; } ;
struct TYPE_12__ {TYPE_1__ l; } ;
struct TYPE_11__ {int savedpc; } ;
typedef TYPE_3__ CallInfo ;


 TYPE_7__* ci_func (TYPE_3__*) ;
 int isLua (TYPE_3__*) ;
 int pcRel (int ,int ) ;

__attribute__((used)) static int currentpc (lua_State *L, CallInfo *ci) {
  if (!isLua(ci)) return -1;
  if (ci == L->ci)
    ci->savedpc = L->savedpc;
  return pcRel(ci->savedpc, ci_func(ci)->l.p);
}
