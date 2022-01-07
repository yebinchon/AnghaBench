
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_6__ {int sizearray; int * array; } ;
typedef TYPE_1__ Table ;
typedef scalar_t__ StkId ;


 int cast_num (int) ;
 int findindex (int *,TYPE_1__*,scalar_t__) ;
 int gnode (TYPE_1__*,int) ;
 int * gval (int ) ;
 int * key2tval (int ) ;
 int setnvalue (scalar_t__,int ) ;
 int setobj (int *,scalar_t__,int *) ;
 scalar_t__ sizenode (TYPE_1__*) ;
 int ttisnil (int *) ;

__attribute__((used)) static int luaH_next(lua_State*L,Table*t,StkId key){
int i=findindex(L,t,key);
for(i++;i<t->sizearray;i++){
if(!ttisnil(&t->array[i])){
setnvalue(key,cast_num(i+1));
setobj(L,key+1,&t->array[i]);
return 1;
}
}
for(i-=t->sizearray;i<(int)sizenode(t);i++){
if(!ttisnil(gval(gnode(t,i)))){
setobj(L,key,key2tval(gnode(t,i)));
setobj(L,key+1,gval(gnode(t,i)));
return 1;
}
}
return 0;
}
