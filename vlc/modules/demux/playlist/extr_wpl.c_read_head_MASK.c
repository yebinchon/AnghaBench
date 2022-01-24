#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xml_reader_t ;
struct TYPE_7__ {int /*<<< orphan*/ * p_sys; } ;
typedef  TYPE_1__ stream_t ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 int XML_READER_ENDELEM ; 
 int XML_READER_STARTELEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const**) ; 

__attribute__((used)) static void FUNC6( stream_t* p_demux, input_item_t* p_input )
{
    xml_reader_t *p_reader = p_demux->p_sys;
    char const* psz_name;
    int i_type;

    while( ( i_type = FUNC5( p_reader, &psz_name ) ) > 0 )
    {
        if( i_type == XML_READER_ENDELEM && !FUNC4( psz_name, "head" ) )
            break;

        if( i_type == XML_READER_STARTELEM )
        {
            if( !FUNC4( psz_name, "meta" ) )
            {
                FUNC2( p_demux, p_input );
                continue;
            }

            if( !FUNC4( psz_name, "title" ) )
            {
                if( FUNC3( p_demux, p_input ) )
                    break;
                continue;
            }

            FUNC1( p_demux, "skipping unknown tag <%s> in <head>", psz_name );
            FUNC0( p_demux, psz_name );
        }
    }
}