
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sizearray; int * gclist; int * array; int marked; } ;
typedef TYPE_1__ Table ;
typedef int TValue ;
typedef int Node ;
typedef int GCObject ;


 TYPE_1__* gco2h (int *) ;
 int * gnode (TYPE_1__*,int) ;
 int * gval (int *) ;
 scalar_t__ iscleared (int *,int) ;
 int * key2tval (int *) ;
 int removeentry (int *) ;
 int setnilvalue (int *) ;
 int sizenode (TYPE_1__*) ;
 scalar_t__ testbit (int ,int) ;
 int ttisnil (int *) ;

__attribute__((used)) static void cleartable(GCObject*l){
while(l){
Table*h=gco2h(l);
int i=h->sizearray;
if(testbit(h->marked,4)){
while(i--){
TValue*o=&h->array[i];
if(iscleared(o,0))
setnilvalue(o);
}
}
i=sizenode(h);
while(i--){
Node*n=gnode(h,i);
if(!ttisnil(gval(n))&&
(iscleared(key2tval(n),1)||iscleared(gval(n),0))){
setnilvalue(gval(n));
removeentry(n);
}
}
l=h->gclist;
}
}
