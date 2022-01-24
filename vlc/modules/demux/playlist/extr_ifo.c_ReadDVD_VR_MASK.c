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
typedef  int /*<<< orphan*/  stream_t ;
typedef  int /*<<< orphan*/  input_item_t ;
typedef  int /*<<< orphan*/  input_item_node_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 char* FUNC6 (char const*) ; 
 size_t FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9( stream_t *p_stream, input_item_node_t *node )
{
    const char *psz_location = FUNC0(p_stream);

    size_t len = FUNC7( psz_location );
    char *psz_url = FUNC6( psz_location );

    if( FUNC8( psz_url == NULL ) )
        return VLC_EGENERIC;

    FUNC5( &psz_url[len - 12], "VR_MOVIE.VRO" );

    input_item_t *p_input = FUNC2( psz_url, psz_url );
    if( p_input )
    {
        FUNC4( node, p_input );
        FUNC3( p_input );
    }

    FUNC1( psz_url );

    return VLC_SUCCESS;
}