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
 int VLC_ENOMEM ; 
 int /*<<< orphan*/  VLC_INPUT_OPTION_TRUSTED ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char const*) ; 
 char* FUNC7 (char const*,scalar_t__) ; 

__attribute__((used)) static int FUNC8( stream_t *p_stream, input_item_node_t *node )
{
    const char *psz_location = FUNC0(p_stream);

    char *psz_url = FUNC7( psz_location, FUNC6( psz_location ) - 12 );
    if( !psz_url )
        return VLC_ENOMEM;

    input_item_t *p_input = FUNC3( psz_url, psz_url );
    if( p_input )
    {
        FUNC2( p_input, "demux=dvd", VLC_INPUT_OPTION_TRUSTED );
        FUNC5( node, p_input );
        FUNC4( p_input );
    }

    FUNC1( psz_url );

    return VLC_SUCCESS;
}