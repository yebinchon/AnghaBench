
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* tmudata; } ;
typedef TYPE_2__ global_State ;
struct TYPE_9__ {TYPE_3__* next; } ;
struct TYPE_11__ {TYPE_1__ gch; } ;
typedef TYPE_3__ GCObject ;


 int makewhite (TYPE_2__*,TYPE_3__*) ;
 int reallymarkobject (TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static void marktmu(global_State*g){
GCObject*u=g->tmudata;
if(u){
do{
u=u->gch.next;
makewhite(g,u);
reallymarkobject(g,u);
}while(u!=g->tmudata);
}
}
