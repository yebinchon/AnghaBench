#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xml_reader_t ;
struct TYPE_6__ {int /*<<< orphan*/  psz_url; int /*<<< orphan*/ * p_sys; } ;
typedef  TYPE_1__ stream_t ;
typedef  int /*<<< orphan*/  input_item_t ;
typedef  int /*<<< orphan*/  input_item_node_t ;

/* Variables and functions */
 char* FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int XML_READER_ENDELEM ; 
 int XML_READER_STARTELEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,char const*) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 
 scalar_t__ FUNC11 (int) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 char* FUNC13 (int /*<<< orphan*/ *,char const**) ; 
 int FUNC14 (int /*<<< orphan*/ *,char const**) ; 

__attribute__((used)) static void FUNC15( stream_t* p_demux, input_item_node_t* p_node )
{
    xml_reader_t *p_reader = p_demux->p_sys;
    const char* psz_name;
    int i_type;

    i_type = FUNC14( p_reader, &psz_name );
    if ( i_type != XML_READER_STARTELEM || FUNC10( psz_name, "seq" ) )
    {
        FUNC8( p_demux, "Expected opening <seq> tag. Got <%s> with type %d", psz_name, i_type );
        return;
    }

    if( FUNC12( p_reader ) == 1 )
        return;

    while ( ( i_type = FUNC14( p_reader, &psz_name ) ) > 0 )
    {
        if ( i_type == XML_READER_ENDELEM && !FUNC10( psz_name, "seq" ) )
            break;

        if( i_type == XML_READER_STARTELEM )
        {
            if( !FUNC10( psz_name, "media" ) )
            {
                const bool b_empty = FUNC12( p_reader );

                const char *psz_attr = NULL, *psz_val = NULL;
                while ((psz_attr = FUNC13( p_reader, &psz_val )))
                {
                    if ( !psz_val || *psz_val == '\0' )
                        continue;
                    if (!FUNC10( psz_attr, "src" ) )
                    {
                        char* mrl = FUNC0( psz_val, p_demux->psz_url );
                        if ( FUNC11( !mrl ) )
                            return;
                        input_item_t* p_item = FUNC4( mrl, NULL );
                        if ( FUNC7( p_item ) )
                        {
                            FUNC6( p_node, p_item );
                            FUNC5( p_item );
                        }
                        FUNC3( mrl );
                    }
                }

                if( b_empty == false )
                    FUNC1( p_reader, "media" );

                continue;
            }

            FUNC9( p_demux, "skipping unknown tag <%s> in <seq>", psz_name );
            FUNC2( p_demux, psz_name );
        }
    }

    i_type = FUNC14( p_reader, &psz_name );
    if ( i_type != XML_READER_ENDELEM || FUNC10( psz_name, "body" ) )
        FUNC8( p_demux, "Expected closing <body> tag. Got: <%s> with type %d", psz_name, i_type );
}