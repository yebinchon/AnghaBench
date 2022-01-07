
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int StkId ;


 int index2adr (int *,int) ;
 void* pvalue (int ) ;
 int rawuvalue (int ) ;
 int ttype (int ) ;

__attribute__((used)) static void*lua_touserdata(lua_State*L,int idx){
StkId o=index2adr(L,idx);
switch(ttype(o)){
case 7:return(rawuvalue(o)+1);
case 2:return pvalue(o);
default:return ((void*)0);
}
}
