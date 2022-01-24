#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int fdc; int* fdv; } ;
typedef  TYPE_1__ vlclua_dtable_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int* FUNC1 (int*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4( lua_State *L, int fd )
{
    vlclua_dtable_t *dt = FUNC3( L );

    if( (unsigned)fd < 3u )
        return -1;

#ifndef NDEBUG
    for( unsigned i = 0; i < dt->fdc; i++ )
        FUNC0( dt->fdv[i] != fd );
#endif

    for( unsigned i = 0; i < dt->fdc; i++ )
    {
        if( dt->fdv[i] == -1 )
        {
            dt->fdv[i] = fd;
            return 3 + i;
        }
    }

    if( dt->fdc >= 64 )
        return -1;

    int *fdv = FUNC1( dt->fdv, (dt->fdc + 1) * sizeof (dt->fdv[0]) );
    if( FUNC2(fdv == NULL) )
        return -1;

    dt->fdv = fdv;
    dt->fdv[dt->fdc] = fd;
    fd = 3 + dt->fdc;
    dt->fdc++;
    return fd;
}