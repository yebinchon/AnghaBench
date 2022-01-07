
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_6__ {int * grayagain; } ;
typedef TYPE_1__ global_State ;
struct TYPE_7__ {int * gclist; } ;
typedef TYPE_2__ Table ;
typedef int GCObject ;


 TYPE_1__* G (int *) ;
 int black2gray (int *) ;
 int * obj2gco (TYPE_2__*) ;

__attribute__((used)) static void luaC_barrierback(lua_State*L,Table*t){
global_State*g=G(L);
GCObject*o=obj2gco(t);
black2gray(o);
t->gclist=g->grayagain;
g->grayagain=o;
}
