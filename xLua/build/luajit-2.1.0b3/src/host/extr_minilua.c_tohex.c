
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int UB ;


 int barg (int *,int) ;
 scalar_t__ lua_isnone (int *,int) ;
 int lua_pushlstring (int *,char*,size_t) ;

__attribute__((used)) static int tohex(lua_State*L){
UB b=barg(L,1);
int n=lua_isnone(L,2)?8:(int)barg(L,2);
const char*hexdigits="0123456789abcdef";
char buf[8];
int i;
if(n<0){n=-n;hexdigits="0123456789ABCDEF";}
if(n>8)n=8;
for(i=(int)n;--i>=0;){buf[i]=hexdigits[b&15];b>>=4;}
lua_pushlstring(L,buf,(size_t)n);
return 1;
}
