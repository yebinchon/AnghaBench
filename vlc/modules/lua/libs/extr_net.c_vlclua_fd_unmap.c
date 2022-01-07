
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int fdc; int* fdv; } ;
typedef TYPE_1__ vlclua_dtable_t ;
typedef int lua_State ;


 int assert (int) ;
 TYPE_1__* vlclua_get_dtable (int *) ;

__attribute__((used)) static void vlclua_fd_unmap( lua_State *L, unsigned idx )
{
    vlclua_dtable_t *dt = vlclua_get_dtable( L );
    int fd;

    if( idx < 3u )
        return;

    idx -= 3;
    if( idx >= dt->fdc )
        return;

    fd = dt->fdv[idx];
    dt->fdv[idx] = -1;
    while( dt->fdc > 0 && dt->fdv[dt->fdc - 1] == -1 )
        dt->fdc--;


    for( unsigned i = 0; i < dt->fdc; i++ )
        assert( dt->fdv[i] != fd );



}
