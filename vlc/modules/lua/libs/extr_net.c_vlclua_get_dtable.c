
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlclua_dtable_t ;
typedef int lua_State ;


 int * vlclua_get_object (int *,int * (*) (int *)) ;

__attribute__((used)) static vlclua_dtable_t *vlclua_get_dtable( lua_State *L )
{
    return vlclua_get_object( L, vlclua_get_dtable );
}
