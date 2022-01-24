#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xml_reader_t ;
struct TYPE_10__ {char const* psz_url; struct TYPE_10__* s; } ;
typedef  TYPE_1__ stream_t ;
typedef  int /*<<< orphan*/  input_item_t ;
typedef  int /*<<< orphan*/  input_item_node_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char**) ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int XML_READER_ENDELEM ; 
 int XML_READER_ERROR ; 
 int XML_READER_STARTELEM ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,char*) ; 
 char* FUNC14 (char const*) ; 
 scalar_t__ FUNC15 (char const*,char*,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/ * FUNC19 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 char* FUNC21 (int /*<<< orphan*/ *,char const**) ; 
 int FUNC22 (int /*<<< orphan*/ *,char const**) ; 

__attribute__((used)) static int FUNC23( stream_t *p_demux, input_item_node_t *p_subitems )
{
    if (FUNC16(p_demux->psz_url == NULL))
        return VLC_EGENERIC;

    const char *psz_node = NULL;
    char *psz_txt = NULL;
    char *psz_base = FUNC14( p_demux->psz_url );
    if (FUNC16(psz_base == NULL))
        return VLC_ENOMEM;

    char *psz_title_asx = NULL;
    char *psz_entryref = NULL;

    xml_reader_t *p_xml_reader = NULL;
    input_item_t *p_current_input = FUNC0( p_demux );
    stream_t* p_stream = FUNC1( p_demux );

    bool b_first_node = false;
    int i_type;
    int i_n_entry = 0;

    p_xml_reader = FUNC19( p_demux, p_stream ? p_stream
                                                       : p_demux->s );
    if( !p_xml_reader )
    {
        FUNC13( p_demux, "Cannot parse ASX input file as XML");
        goto error;
    }

    do
    {
        i_type = FUNC22( p_xml_reader, &psz_node );
        if( i_type == XML_READER_ERROR )
            break;

        if( i_type == XML_READER_STARTELEM )
        {
            if( !b_first_node )
            {
                if(!FUNC15( psz_node, "ASX", 3 ) )
                    b_first_node = true;
                else
                {
                    FUNC13( p_demux, "invalid root node" );
                    goto error;
                }
            }

            /* Metadata Node Handler */
            if( !FUNC15( psz_node, "TITLE", 5 ) )
            {
                if( ! FUNC3( p_xml_reader, &psz_title_asx ) )
                    break;
                FUNC10( p_current_input, psz_title_asx );
            }
            else if( !FUNC15( psz_node, "AUTHOR", 6 ) )
            {
                if( ! FUNC3( p_xml_reader, &psz_txt ) )
                    break;
                FUNC7( p_current_input, psz_txt );
            }
            else if( !FUNC15( psz_node, "COPYRIGHT", 9 ) )
            {
                if( ! FUNC3( p_xml_reader, &psz_txt ) )
                    break;
                FUNC8( p_current_input, psz_txt );
            }
            else if( !FUNC15( psz_node, "MOREINFO", 8 ) )
            {
                const char *psz_tmp;
                do
                {
                    psz_tmp = FUNC21( p_xml_reader, &psz_node );
                }
                while( psz_tmp && FUNC15( psz_tmp, "HREF", 4 ) );

                if( !psz_tmp )  // If HREF attribute doesn't exist
                {
                    if( ! FUNC3( p_xml_reader, &psz_txt ) )
                        break;
                }
                else
                    psz_txt = FUNC14( psz_node );

                FUNC18( psz_txt );
                FUNC11( p_current_input, psz_txt );
            }
            else if( !FUNC15( psz_node, "ABSTRACT", 8 ) )
            {
                if( ! FUNC3( p_xml_reader, &psz_txt ) )
                    break;
                FUNC9( p_current_input, psz_txt );
            }
            else
            /* Base Node handler */
            if( !FUNC15( psz_node, "BASE", 4 ) )
            {
                if( ! FUNC3( p_xml_reader, &psz_base ) )
                    break;
            }
            else
            /* Entry Ref Handler */
            if( !FUNC15( psz_node, "ENTRYREF", 7 ) )
            {
                const char *psz_tmp;
                do
                {
                    psz_tmp = FUNC21( p_xml_reader, &psz_node );
                }
                while( psz_tmp && !FUNC15( psz_tmp, "HREF", 4 ) );
                if( ! psz_tmp )
                    break;

                /* Create new input item */
                input_item_t *p_input;
                psz_txt = FUNC14( psz_node );
                FUNC18( psz_txt );
                p_input = FUNC5( psz_txt, psz_title_asx );
                FUNC12( p_subitems, p_input );

                FUNC6( p_input );
            }
            else
            /* Entry Handler */
            if( !FUNC15( psz_node, "ENTRY", 5 ) )
            {
                FUNC2( &i_n_entry, p_xml_reader, p_subitems,
                              p_current_input, psz_base);
            }
        /* FIXME Unsupported elements
            PARAM
            EVENT
            REPEAT
            ENDMARK
            STARTMARK
        */
        }
    }
    while( i_type != XML_READER_ENDELEM || FUNC15( psz_node, "ASX", 3 ) );

error:
    FUNC4( psz_base );
    FUNC4( psz_title_asx );
    FUNC4( psz_entryref );
    FUNC4( psz_txt );

    if( p_xml_reader)
        FUNC20( p_xml_reader );
    if( p_stream )
        FUNC17( p_stream );

    return 0;
}