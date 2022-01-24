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
struct TYPE_8__ {int /*<<< orphan*/  s; } ;
typedef  TYPE_1__ stream_t ;
typedef  int /*<<< orphan*/  input_item_t ;
typedef  int /*<<< orphan*/  input_item_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
#define  XML_READER_ENDELEM 130 
#define  XML_READER_STARTELEM 129 
#define  XML_READER_TEXT 128 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,char*,...) ; 
 scalar_t__ FUNC14 (char const*,char*) ; 
 char* FUNC15 (char const*) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 char* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/ * FUNC19 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 char* FUNC21 (int /*<<< orphan*/ *,char const**) ; 
 int FUNC22 (int /*<<< orphan*/ *,char const**) ; 

__attribute__((used)) static int FUNC23( stream_t *p_demux, input_item_node_t *p_subitems )
{
    int i_ret = -1;

    xml_reader_t *p_xml_reader = NULL;
    char *psz_elname = NULL;
    const char *node;
    input_item_t *p_input;
    char *psz_mrl = NULL, *psz_title = NULL, *psz_genre = NULL;
    char *psz_now = NULL, *psz_listeners = NULL, *psz_bitrate = NULL;

    input_item_t *p_current_input = FUNC1(p_demux);

    FUNC4( FUNC17( p_demux->s ) );

    p_xml_reader = FUNC19( p_demux, p_demux->s );
    if( !p_xml_reader )
        return -1;

    /* xml */
    /* check root node */
    if( FUNC22( p_xml_reader, &node ) != XML_READER_STARTELEM )
    {
        FUNC12( p_demux, "invalid file (no root node)" );
        goto end;
    }

    if( FUNC14( node, "WinampXML" ) )
    {
        FUNC12( p_demux, "invalid root node: %s", node );
        goto end;
    }

    /* root node should not have any attributes, and should only
     * contain the "playlist node */

    /* Skip until 1st child node */
    while( (i_ret = FUNC22( p_xml_reader, &node )) != XML_READER_STARTELEM )
        if( i_ret <= 0 )
        {
            FUNC12( p_demux, "invalid file (no child node)" );
            goto end;
        }

    if( FUNC14( node, "playlist" ) )
    {
        FUNC12( p_demux, "invalid child node %s", node );
        goto end;
    }

    // Read the attributes
    const char *attr, *value;
    while( (attr = FUNC21( p_xml_reader, &value )) != NULL )
    {
        if( !FUNC14( attr, "num_entries" ) )
            FUNC11( p_demux, "playlist has %d entries", FUNC3(value) );
        else if( !FUNC14( attr, "label" ) )
            FUNC8( p_current_input, value );
        else
            FUNC13( p_demux, "stray attribute %s with value %s in element"
                      " <playlist>", attr, value );
    }

    while( (i_ret = FUNC22( p_xml_reader, &node )) > 0 )
    {
        // Get the node type
        switch( i_ret )
        {
            case XML_READER_STARTELEM:
            {
                // Read the element name
                FUNC4( psz_elname );
                psz_elname = FUNC15( node );
                if( FUNC16(!psz_elname) )
                    goto end;

                // Read the attributes
                while( (attr = FUNC21( p_xml_reader, &value )) )
                {
                    if( !FUNC14( psz_elname, "entry" ) &&
                        !FUNC14( attr, "Playstring" ) )
                    {
                        FUNC4( psz_mrl );
                        psz_mrl = FUNC15( value );
                    }
                    else
                    {
                        FUNC13( p_demux, "unexpected attribute %s in <%s>",
                                  attr, psz_elname );
                    }
                }
                break;
            }

            case XML_READER_TEXT:
            {
                char **p;

                if( psz_elname == NULL )
                    break;
                if( FUNC2( node ) )
                    break;
                if( !FUNC14( psz_elname, "Name" ) )
                    p = &psz_title;
                else if( !FUNC14( psz_elname, "Genre" ) )
                    p = &psz_genre;
                else if( !FUNC14( psz_elname, "Nowplaying" ) )
                    p = &psz_now;
                else if( !FUNC14( psz_elname, "Listeners" ) )
                    p = &psz_listeners;
                else if( !FUNC14( psz_elname, "Bitrate" ) )
                    p = &psz_bitrate;
                else
                {
                    FUNC13( p_demux, "unexpected text in element <%s>",
                              psz_elname );
                    break;
                }
                FUNC4( *p );
                *p = FUNC15( node );
                break;
            }

            // End element
            case XML_READER_ENDELEM:
            {
                // Read the element name
                if( !FUNC14( node, "entry" ) )
                {
                    FUNC18( psz_mrl );
                    p_input = FUNC5( psz_mrl, psz_title );
                    if( psz_now )
                        FUNC9( p_input, psz_now );
                    if( psz_genre )
                        FUNC7( p_input, psz_genre );
                    if( psz_listeners )
                        FUNC12( p_demux, "Unsupported meta listeners" );
                    if( psz_bitrate )
                        FUNC12( p_demux, "Unsupported meta bitrate" );

                    FUNC10( p_subitems, p_input );
                    FUNC6( p_input );
                    FUNC0( psz_title );
                    FUNC0( psz_mrl );
                    FUNC0( psz_genre );
                    FUNC0( psz_bitrate );
                    FUNC0( psz_listeners );
                    FUNC0( psz_now );
                }
                FUNC0( psz_elname );
                break;
            }
        }
    }

    if( i_ret < 0 )
    {
        FUNC13( p_demux, "error while parsing data" );
        i_ret = 0; /* Needed for correct operation of go back */
    }

end:
    FUNC4( psz_elname );

    if( p_xml_reader )
        FUNC20( p_xml_reader );
    return i_ret;
}