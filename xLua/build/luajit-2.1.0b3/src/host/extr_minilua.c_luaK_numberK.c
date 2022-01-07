
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_Number ;
typedef int TValue ;
typedef int FuncState ;


 int addk (int *,int *,int *) ;
 int setnvalue (int *,int ) ;

__attribute__((used)) static int luaK_numberK(FuncState*fs,lua_Number r){
TValue o;
setnvalue(&o,r);
return addk(fs,&o,&o);
}
