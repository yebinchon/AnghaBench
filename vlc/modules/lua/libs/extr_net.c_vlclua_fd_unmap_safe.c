
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int net_Close (int) ;
 int vlclua_fd_get (int *,unsigned int) ;
 int vlclua_fd_unmap (int *,unsigned int) ;

__attribute__((used)) static void vlclua_fd_unmap_safe( lua_State *L, unsigned idx )
{
    int fd = vlclua_fd_get( L, idx );

    vlclua_fd_unmap( L, idx );
    if( fd != -1 )
        net_Close( fd );
}
