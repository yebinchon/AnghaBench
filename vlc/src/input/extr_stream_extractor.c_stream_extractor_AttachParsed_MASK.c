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
typedef  int /*<<< orphan*/  stream_t ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const**,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ *) ; 

int
FUNC6( stream_t** source, char const* data,
                               char const** out_extra )
{
    vlc_array_t identifiers;

    if( FUNC1( &identifiers, out_extra, data ) )
        return VLC_EGENERIC;

    size_t count = FUNC3( &identifiers );
    size_t idx = 0;

    while( idx < count )
    {
        char* id = FUNC4( &identifiers, idx );

        if( FUNC5( source, id, NULL ) )
            break;

        ++idx;
    }

    for( size_t i = 0; i < count; ++i )
        FUNC0( FUNC4( &identifiers, i ) );
    FUNC2( &identifiers );

    return idx == count ? VLC_SUCCESS : VLC_EGENERIC;
}