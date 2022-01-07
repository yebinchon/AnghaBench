
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int global_State ;
typedef int Upvaldesc ;
struct TYPE_7__ {int sizek; int sizeupvalues; int sizep; int sizelocvars; int sizecode; int sizelineinfo; TYPE_2__* locvars; int * p; TYPE_1__* upvalues; int * k; int source; int * cache; } ;
struct TYPE_6__ {int varname; } ;
struct TYPE_5__ {int name; } ;
typedef int TValue ;
typedef TYPE_3__ Proto ;
typedef int LocVar ;
typedef int Instruction ;


 scalar_t__ iswhite (int ) ;
 int markobject (int *,int ) ;
 int markvalue (int *,int *) ;
 int obj2gco (int *) ;

__attribute__((used)) static int traverseproto (global_State *g, Proto *f) {
  int i;
  if (f->cache && iswhite(obj2gco(f->cache)))
    f->cache = ((void*)0);
  markobject(g, f->source);
  for (i = 0; i < f->sizek; i++)
    markvalue(g, &f->k[i]);
  for (i = 0; i < f->sizeupvalues; i++)
    markobject(g, f->upvalues[i].name);
  for (i = 0; i < f->sizep; i++)
    markobject(g, f->p[i]);
  for (i = 0; i < f->sizelocvars; i++)
    markobject(g, f->locvars[i].varname);
  return sizeof(Proto) + sizeof(Instruction) * f->sizecode +
                         sizeof(Proto *) * f->sizep +
                         sizeof(TValue) * f->sizek +
                         sizeof(int) * f->sizelineinfo +
                         sizeof(LocVar) * f->sizelocvars +
                         sizeof(Upvaldesc) * f->sizeupvalues;
}
