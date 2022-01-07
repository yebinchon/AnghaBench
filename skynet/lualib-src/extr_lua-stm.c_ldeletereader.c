
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct boxreader {int * lastcopy; int * obj; } ;
typedef int lua_State ;


 struct boxreader* lua_touserdata (int *,int) ;
 int stm_releasecopy (int *) ;
 int stm_releasereader (int *) ;

__attribute__((used)) static int
ldeletereader(lua_State *L) {
 struct boxreader * box = lua_touserdata(L, 1);
 stm_releasereader(box->obj);
 box->obj = ((void*)0);
 stm_releasecopy(box->lastcopy);
 box->lastcopy = ((void*)0);

 return 0;
}
