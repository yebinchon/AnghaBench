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
typedef  int /*<<< orphan*/  stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 
 char* FUNC2 (char const*,char) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,char const*,char const**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char const*) ; 

stream_t *(FUNC6)(vlc_object_t* parent, const char* mrl )
{
    stream_t* stream = FUNC5( parent, mrl );

    if( stream == NULL )
        return NULL;

    char const* anchor = FUNC2( mrl, '#' );

    if( anchor == NULL )
        return stream;

    char const* extra;
    if( FUNC3( &stream, anchor + 1, &extra ) )
    {
        FUNC0( parent, "unable to open %s", mrl );
        FUNC4( stream );
        return NULL;
    }

    if( extra && *extra )
        FUNC1( parent, "ignoring extra fragment data: %s", extra );

    return stream;
}