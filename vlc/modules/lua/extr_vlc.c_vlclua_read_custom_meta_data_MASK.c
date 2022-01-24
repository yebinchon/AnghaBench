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
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {int /*<<< orphan*/  lock; scalar_t__ p_meta; } ;
typedef  TYPE_1__ input_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char const*,char const*) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12( vlc_object_t *p_this, lua_State *L,
                                     input_item_t *p_input )
{
    /* Lock the input item and create the meta table if needed */
    FUNC10( &p_input->lock );

    if( !p_input->p_meta )
        p_input->p_meta = FUNC9();

    /* ... item */
    FUNC0( L, -1, "meta" );
    /* ... item meta */
    if( FUNC2( L, -1 ) )
    {
        FUNC5( L );
        /* ... item meta nil */
        while( FUNC3( L, -2 ) )
        {
            /* ... item meta key value */
            if( !FUNC1( L, -2 ) || !FUNC1( L, -1 ) )
            {
                FUNC7( p_this, "'meta' keys and values must be strings");
                FUNC4( L, 1 ); /* pop "value" */
                continue;
            }
            const char *psz_key = FUNC6( L, -2 );
            const char *psz_value = FUNC6( L, -1 );

            FUNC8( p_input->p_meta, psz_key, psz_value );

            FUNC4( L, 1 ); /* pop "value" */
        }
    }
    FUNC4( L, 1 ); /* pop "meta" */
    /* ... item -> back to original stack */

    FUNC11( &p_input->lock );
}