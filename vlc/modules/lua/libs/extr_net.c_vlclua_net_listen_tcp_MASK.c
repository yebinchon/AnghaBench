#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,char const*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int** FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int*) ; 
 int* FUNC11 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vlclua_net_listen_close ; 
 int /*<<< orphan*/  vlclua_net_listen_reg ; 

__attribute__((used)) static int FUNC16( lua_State *L )
{
    vlc_object_t *p_this = FUNC15( L );
    const char *psz_host = FUNC1( L, 1 );
    int i_port = FUNC0( L, 2 );
    int *pi_fd = FUNC11( p_this, psz_host, i_port );
    if( pi_fd == NULL )
        return FUNC2( L, "Cannot listen on %s:%d", psz_host, i_port );

    for( unsigned i = 0; pi_fd[i] != -1; i++ )
        if( FUNC13( L, pi_fd[i] ) == -1 )
        {
            while( i > 0 )
                FUNC14( L, FUNC12( L, pi_fd[--i] ) );

            FUNC10( pi_fd );
            return FUNC2( L, "Cannot listen on %s:%d", psz_host, i_port );
        }

    int **ppi_fd = FUNC6( L, sizeof( int * ) );
    *ppi_fd = pi_fd;

    if( FUNC3( L, "net_listen" ) )
    {
        FUNC5( L );
        FUNC4( L, NULL, vlclua_net_listen_reg );
        FUNC8( L, -2, "__index" );
        FUNC7( L, vlclua_net_listen_close );
        FUNC8( L, -2, "__gc" );
    }

    FUNC9( L, -2 );
    return 1;
}