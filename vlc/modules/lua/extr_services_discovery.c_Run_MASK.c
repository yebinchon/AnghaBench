#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ services_discovery_t ;
struct TYPE_7__ {int i_query; char** ppsz_query; int /*<<< orphan*/  lock; int /*<<< orphan*/  cond; int /*<<< orphan*/  psz_filename; int /*<<< orphan*/ * L; } ;
typedef  TYPE_2__ services_discovery_sys_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  LUA_GCCOLLECT ; 
 int /*<<< orphan*/  FUNC1 (int,char**,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int FUNC19 () ; 

__attribute__((used)) static void* FUNC20( void *data )
{
    services_discovery_t *p_sd = ( services_discovery_t * )data;
    services_discovery_sys_t *p_sys = p_sd->p_sys;
    lua_State *L = p_sys->L;

    int cancel = FUNC19();

    FUNC4( L, "main" );
    if( !FUNC6( L, FUNC5( L ) ) || FUNC7( L, 0, 1, 0 ) )
    {
        FUNC11( p_sd, "Error while running script %s, "
                  "function main(): %s", p_sys->psz_filename,
                  FUNC9( L, FUNC5( L ) ) );
        FUNC8( L, 1 );
        FUNC18( cancel );
        return NULL;
    }
    FUNC10( p_sd, "LuaSD script loaded: %s", p_sys->psz_filename );

    /* Force garbage collection, because the core will keep the SD
     * open, but lua will never gc until lua_close(). */
    FUNC3( L, LUA_GCCOLLECT, 0 );

    FUNC18( cancel );

    /* Main loop to handle search requests */
    FUNC16( &p_sys->lock );
    FUNC12( &p_sys->lock );
    for( ;; )
    {
        /* Wait for a request */
        if( !p_sys->i_query )
        {
            FUNC15( &p_sys->cond, &p_sys->lock );
            continue;
        }

        /* Execute one query (protected against cancellation) */
        char *psz_query = p_sys->ppsz_query[p_sys->i_query - 1];
        FUNC1(p_sys->i_query, p_sys->ppsz_query, p_sys->i_query - 1);
        FUNC17( &p_sys->lock );

        cancel = FUNC19();
        FUNC0( p_sd, psz_query );
        FUNC2( psz_query );
        /* Force garbage collection, because the core will keep the SD
         * open, but lua will never gc until lua_close(). */
        FUNC3( L, LUA_GCCOLLECT, 0 );
        FUNC18( cancel );

        FUNC16( &p_sys->lock );
    }
    FUNC14();
    FUNC13();
}