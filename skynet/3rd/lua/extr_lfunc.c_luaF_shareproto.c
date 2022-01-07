
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int sizek; int sizeupvalues; int sizelocvars; int sizep; struct TYPE_8__** p; TYPE_2__* locvars; TYPE_1__* upvalues; int * k; int source; } ;
struct TYPE_7__ {int varname; } ;
struct TYPE_6__ {int name; } ;
typedef TYPE_3__ Proto ;


 scalar_t__ LUA_TSTRING ;
 int luaS_share (int ) ;
 int makeshared (TYPE_3__*) ;
 int tsvalue (int *) ;
 scalar_t__ ttnov (int *) ;

void luaF_shareproto (Proto *f) {
  int i;
  if (f == ((void*)0))
    return;
  makeshared(f);
  luaS_share(f->source);
  for (i = 0; i < f->sizek; i++) {
    if (ttnov(&f->k[i]) == LUA_TSTRING)
      luaS_share(tsvalue(&f->k[i]));
  }
  for (i = 0; i < f->sizeupvalues; i++)
    luaS_share(f->upvalues[i].name);
  for (i = 0; i < f->sizelocvars; i++)
    luaS_share(f->locvars[i].varname);
  for (i = 0; i < f->sizep; i++)
    luaF_shareproto(f->p[i]);
}
