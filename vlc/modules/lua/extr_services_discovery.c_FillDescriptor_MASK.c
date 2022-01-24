#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ services_discovery_t ;
struct TYPE_10__ {char const* psz_filename; } ;
typedef  TYPE_2__ services_discovery_sys_t ;
struct TYPE_11__ {int i_capabilities; void* psz_url; void* psz_icon_url; void* psz_short_desc; } ;
typedef  TYPE_3__ services_discovery_descriptor_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int VLC_SUCCESS ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 void* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 char const* FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,char*,char const*,char const*) ; 
 char** ppsz_capabilities ; 
 int /*<<< orphan*/  FUNC16 (char const*,char const*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int FUNC18( services_discovery_t *p_sd,
                           services_discovery_descriptor_t *p_desc )
{
    services_discovery_sys_t *p_sys = p_sd->p_sys;
    int i_ret = VLC_EGENERIC;

    /* Create a new lua thread */
    lua_State *L = FUNC2();

    if( FUNC17( FUNC0(p_sd), L, p_sys->psz_filename ) )
    {
        FUNC14( p_sd, "Error loading script %s: %s", p_sys->psz_filename,
                 FUNC13( L, -1 ) );
        goto end;
    }

    /* Call the "descriptor" function */
    FUNC6( L, "descriptor" );
    if( !FUNC7( L, -1 ) || FUNC10( L, 0, 1, 0 ) )
    {
        FUNC15( p_sd, "Error getting the descriptor in '%s': %s",
                  p_sys->psz_filename, FUNC13( L, -1 ) );
        goto end;
    }

    /* Get the different fields of the returned table */
    FUNC5( L, -1, "short_description" );
    p_desc->psz_short_desc = FUNC3( L, -1 );
    FUNC11( L, 1 );

    FUNC5( L, -1, "icon" );
    p_desc->psz_icon_url = FUNC3( L, -1 );
    FUNC11( L, 1 );

    FUNC5( L, -1, "url" );
    p_desc->psz_url = FUNC3( L, -1 );
    FUNC11( L, 1 );

    FUNC5( L, -1, "capabilities" );
    p_desc->i_capabilities = 0;
    if( FUNC8( L, -1 ) )
    {
        /* List all table entries */
        FUNC12( L );
        while( FUNC9( L, -2 ) != 0 )
        {
            /* Key is at index -2 and value at index -1 */
            const char *psz_cap = FUNC1( L, -1 );
            int i_cap = 0;
            const char *psz_iter;
            for( psz_iter = *ppsz_capabilities; psz_iter;
                 psz_iter = ppsz_capabilities[ ++i_cap ] )
            {
                if( !FUNC16( psz_iter, psz_cap ) )
                {
                    p_desc->i_capabilities |= 1 << i_cap;
                    break;
                }
            }

            FUNC11( L, 1 );

            if( !psz_iter )
                FUNC15( p_sd, "Services discovery capability '%s' unknown in "
                                "script '%s'", psz_cap, p_sys->psz_filename );
        }
    }

    FUNC11( L, 1 );
    i_ret = VLC_SUCCESS;

end:
    FUNC4( L );
    return i_ret;

}