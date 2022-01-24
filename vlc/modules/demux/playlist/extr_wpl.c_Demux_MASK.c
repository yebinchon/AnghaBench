#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xml_reader_t ;
struct TYPE_8__ {int /*<<< orphan*/ * p_sys; } ;
typedef  TYPE_1__ stream_t ;
typedef  int /*<<< orphan*/  input_item_t ;
typedef  int /*<<< orphan*/  input_item_node_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int XML_READER_ENDELEM ; 
 int XML_READER_STARTELEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,char const**) ; 

__attribute__((used)) static int FUNC8( stream_t* p_demux, input_item_node_t *p_node )
{
    xml_reader_t *p_reader = p_demux->p_sys;
    const char* psz_name;
    int i_type;

    if( FUNC7( p_reader, &psz_name ) != XML_READER_STARTELEM ||
        FUNC5( psz_name, "smil" ) || FUNC6( p_reader ) == 1 )
    {
        return VLC_EGENERIC;
    }

    input_item_t* p_input = FUNC0( p_demux );

    while( ( i_type = FUNC7( p_reader, &psz_name ) ) > 0 )
    {
        if( i_type == XML_READER_ENDELEM && !FUNC5( psz_name, "smil" ) )
            break;

        if( i_type == XML_READER_STARTELEM )
        {
            if( !FUNC5( psz_name, "head" ) )
            {
                FUNC4( p_demux, p_input );
                continue;
            }

            if( !FUNC5( psz_name, "body" ) )
            {
                FUNC3( p_demux, p_node );
                continue;
            }

            FUNC2( p_demux, "skipping unknown tag <%s> in <smil>", psz_name );
            FUNC1( p_demux, psz_name );
        }
    }

    return VLC_SUCCESS;
}