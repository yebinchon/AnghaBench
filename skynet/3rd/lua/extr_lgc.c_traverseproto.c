
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int global_State ;
typedef int Upvaldesc ;
struct TYPE_7__ {int sizek; int sizeupvalues; int sizep; int sizelocvars; int sizecode; int sizelineinfo; TYPE_2__* locvars; int * p; TYPE_1__* upvalues; int * k; int source; } ;
struct TYPE_6__ {int varname; } ;
struct TYPE_5__ {int name; } ;
typedef int TValue ;
typedef TYPE_3__ Proto ;
typedef int LocVar ;
typedef int Instruction ;


 int markobjectN (int *,int ) ;
 int markvalue (int *,int *) ;

__attribute__((used)) static int traverseproto (global_State *g, Proto *f) {
  int i;
  markobjectN(g, f->source);
  for (i = 0; i < f->sizek; i++)
    markvalue(g, &f->k[i]);
  for (i = 0; i < f->sizeupvalues; i++)
    markobjectN(g, f->upvalues[i].name);
  for (i = 0; i < f->sizep; i++)
    markobjectN(g, f->p[i]);
  for (i = 0; i < f->sizelocvars; i++)
    markobjectN(g, f->locvars[i].varname);
  return sizeof(Proto) + sizeof(Instruction) * f->sizecode +
                         sizeof(Proto *) * f->sizep +
                         sizeof(TValue) * f->sizek +
                         sizeof(int) * f->sizelineinfo +
                         sizeof(LocVar) * f->sizelocvars +
                         sizeof(Upvaldesc) * f->sizeupvalues;
}
