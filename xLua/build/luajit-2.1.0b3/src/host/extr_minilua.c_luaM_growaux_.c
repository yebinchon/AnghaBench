
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaG_runerror (int *,char const*) ;
 void* luaM_reallocv (int *,void*,int,int,size_t) ;

__attribute__((used)) static void*luaM_growaux_(lua_State*L,void*block,int*size,size_t size_elems,
int limit,const char*errormsg){
void*newblock;
int newsize;
if(*size>=limit/2){
if(*size>=limit)
luaG_runerror(L,errormsg);
newsize=limit;
}
else{
newsize=(*size)*2;
if(newsize<4)
newsize=4;
}
newblock=luaM_reallocv(L,block,*size,newsize,size_elems);
*size=newsize;
return newblock;
}
