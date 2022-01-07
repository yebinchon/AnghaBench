
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int global_State ;
struct TYPE_5__ {int sizek; int sizeupvalues; int sizep; int sizelocvars; TYPE_1__* locvars; scalar_t__* p; scalar_t__* upvalues; int * k; scalar_t__ source; } ;
struct TYPE_4__ {scalar_t__ varname; } ;
typedef TYPE_2__ Proto ;


 int markobject (int *,scalar_t__) ;
 int markvalue (int *,int *) ;
 int stringmark (scalar_t__) ;

__attribute__((used)) static void traverseproto(global_State*g,Proto*f){
int i;
if(f->source)stringmark(f->source);
for(i=0;i<f->sizek;i++)
markvalue(g,&f->k[i]);
for(i=0;i<f->sizeupvalues;i++){
if(f->upvalues[i])
stringmark(f->upvalues[i]);
}
for(i=0;i<f->sizep;i++){
if(f->p[i])
markobject(g,f->p[i]);
}
for(i=0;i<f->sizelocvars;i++){
if(f->locvars[i].varname)
stringmark(f->locvars[i].varname);
}
}
