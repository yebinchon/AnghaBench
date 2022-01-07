
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table {int L; } ;
typedef int lua_State ;


 int delete_tbl (struct table*) ;
 struct table* get_table (int *,int) ;
 int lua_close (int ) ;

__attribute__((used)) static int
ldeleteconf(lua_State *L) {
 struct table *tbl = get_table(L,1);
 lua_close(tbl->L);
 delete_tbl(tbl);
 return 0;
}
