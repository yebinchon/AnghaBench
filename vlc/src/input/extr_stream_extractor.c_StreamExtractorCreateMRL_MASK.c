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
struct vlc_memstream {char* ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char**,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 scalar_t__ FUNC3 (struct vlc_memstream*) ; 
 scalar_t__ FUNC4 (struct vlc_memstream*) ; 
 int /*<<< orphan*/  FUNC5 (struct vlc_memstream*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct vlc_memstream*,char) ; 
 int /*<<< orphan*/  FUNC7 (struct vlc_memstream*,char const*) ; 

__attribute__((used)) static char*
FUNC8( char const* base, char const* subentry )
{
    struct vlc_memstream buffer;
    char* escaped;

    if( FUNC1( &escaped, subentry ) )
        return NULL;

    if( FUNC4( &buffer ) )
    {
        FUNC0( escaped );
        return NULL;
    }

    FUNC7( &buffer, base );

    if( !FUNC2( base, "#" ) )
        FUNC6( &buffer, '#' );

    FUNC5( &buffer, "!/%s", escaped );

    FUNC0( escaped );
    return FUNC3( &buffer ) ? NULL : buffer.ptr;
}