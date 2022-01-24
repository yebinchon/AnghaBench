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

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int XML_READER_ENDELEM ; 
 int XML_READER_STARTELEM ; 
 int /*<<< orphan*/  FUNC0 (char const*,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const**) ; 

__attribute__((used)) static int FUNC3( xml_reader_t* p_reader, char const* psz_tag )
{
    int i_type, i_depth = 0;
    char const *psz_name;

    if( FUNC1( p_reader ) == 1 )
        return VLC_SUCCESS;

    while( ( i_type = FUNC2( p_reader, &psz_name ) ) > 0 )
    {
        if( i_type == XML_READER_ENDELEM && !FUNC0( psz_name, psz_tag ) )
        {
            if( --i_depth < 0 )
                return VLC_SUCCESS;
        }
        else if( i_type == XML_READER_STARTELEM && !FUNC0( psz_name, psz_tag ) )
        {
            if( FUNC1( p_reader ) != 1 )
                ++i_depth;
        }
    }

    return VLC_EGENERIC;
}