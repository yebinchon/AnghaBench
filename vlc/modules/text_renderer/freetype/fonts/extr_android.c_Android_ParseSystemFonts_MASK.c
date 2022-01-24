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
typedef  int /*<<< orphan*/  xml_reader_t ;
typedef  int /*<<< orphan*/  stream_t ;
typedef  int /*<<< orphan*/  filter_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int XML_READER_STARTELEM ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,char const**) ; 

__attribute__((used)) static int FUNC9( filter_t *p_filter, const char *psz_path,
                                     bool b_new_format )
{
    int i_ret = VLC_SUCCESS;
    stream_t *p_stream = FUNC5( p_filter, psz_path );

    if( !p_stream )
        return VLC_EGENERIC;

    xml_reader_t *p_xml = FUNC6( p_filter, p_stream );

    if( !p_xml )
    {
        FUNC4( p_stream );
        return VLC_EGENERIC;
    }

    const char *p_node;
    int i_type;
    while( ( i_type = FUNC8( p_xml, &p_node ) ) > 0 )
    {
        if( i_type == XML_READER_STARTELEM && !FUNC3( "family", p_node ) && b_new_format )
        {
            if( ( i_ret = FUNC1( p_filter, p_xml ) ) )
                break;
        }
        else if( i_type == XML_READER_STARTELEM && !FUNC3( "family", p_node ) && !b_new_format )
        {
            if( ( i_ret = FUNC0( p_filter, p_xml ) ) )
                break;
        }
        else if( i_type == XML_READER_STARTELEM && !FUNC3( "alias", p_node ) && b_new_format )
        {
            if( ( i_ret = FUNC2( p_filter, p_xml ) ) )
                break;
        }
    }

    FUNC7( p_xml );
    FUNC4( p_stream );
    return i_ret;
}