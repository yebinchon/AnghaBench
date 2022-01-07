
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_7__ {int nupvalues; } ;
struct TYPE_6__ {int nupvalues; scalar_t__ isC; } ;
struct TYPE_8__ {TYPE_2__ l; TYPE_1__ c; } ;
typedef TYPE_3__ Closure ;


 int luaM_freemem (int *,TYPE_3__*,int) ;
 int sizeCclosure (int ) ;
 int sizeLclosure (int ) ;

void luaF_freeclosure (lua_State *L, Closure *c) {
  int size = (c->c.isC) ? sizeCclosure(c->c.nupvalues) :
                          sizeLclosure(c->l.nupvalues);
  luaM_freemem(L, c, size);
}
