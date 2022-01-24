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
typedef  int /*<<< orphan*/  vlc_array_t ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char const*,char*) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 
 char* FUNC3 (char const*,int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 size_t FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static inline int
FUNC11( vlc_array_t* out_items,
                   char const** out_extra,
                   char const* payload )
{
    char const* extra = NULL;

    FUNC8( out_items );

    while( FUNC2( payload, "!/", 2 ) == 0 )
    {
        payload += 2;

        int len = FUNC1( payload, "!?" );
        char* decoded = FUNC3( payload, len );

        if( FUNC4( !decoded ) || !FUNC10( decoded ) )
            goto error;

        if( FUNC5( out_items, decoded ) )
        {
            FUNC0( decoded );
            goto error;
        }
        payload += len;
    }

    if( *payload )
    {
        if( *payload == '!' )
            goto error;

        if( *payload == '?' && FUNC7( out_items ) )
            ++payload;

        extra = payload;
    }

    *out_extra = extra;
    return VLC_SUCCESS;

error:
    for( size_t i = 0; i < FUNC7( out_items ); ++i )
        FUNC0( FUNC9( out_items, i ) );
    FUNC6( out_items );
    return VLC_EGENERIC;;
}