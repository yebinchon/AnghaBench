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
typedef  int /*<<< orphan*/  input_thread_t ;
typedef  int /*<<< orphan*/  input_item_slave_t ;

/* Variables and functions */
 int /*<<< orphan*/  SLAVE_PRIORITY_USER ; 
 int /*<<< orphan*/  SLAVE_TYPE_AUDIO ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,char) ; 
 char* FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC8 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9( input_thread_t *p_input,
                          input_item_slave_t ***ppp_slaves, int *p_slaves )
{
    char *psz = FUNC7( p_input, "input-slave" );
    if( !psz )
        return;

    input_item_slave_t **pp_slaves = *ppp_slaves;
    int i_slaves = *p_slaves;

    char *psz_org = psz;
    while( psz && *psz )
    {
        while( *psz == ' ' || *psz == '#' )
            psz++;

        char *psz_delim = FUNC3( psz, '#' );
        if( psz_delim )
            *psz_delim++ = '\0';

        if( *psz == 0 )
            break;

        char *uri = FUNC5(psz, "://")
                                   ? FUNC4( psz ) : FUNC8( psz, NULL );
        psz = psz_delim;
        if( uri == NULL )
            continue;

        input_item_slave_t *p_slave =
            FUNC2( uri, SLAVE_TYPE_AUDIO, SLAVE_PRIORITY_USER );
        FUNC1( uri );

        if( FUNC6( p_slave == NULL ) )
            break;
        FUNC0(i_slaves, pp_slaves, p_slave);
    }
    FUNC1( psz_org );

    *ppp_slaves = pp_slaves; /* in case of realloc */
    *p_slaves = i_slaves;
}