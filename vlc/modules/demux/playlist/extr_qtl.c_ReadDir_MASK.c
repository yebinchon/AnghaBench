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
struct TYPE_6__ {int /*<<< orphan*/  s; } ;
typedef  TYPE_1__ stream_t ;
typedef  size_t qtl_loop_t ;
typedef  size_t qtl_fullscreen_t ;
typedef  int /*<<< orphan*/  input_item_t ;
typedef  int /*<<< orphan*/  input_item_node_t ;

/* Variables and functions */
 size_t FULLSCREEN_CURRENT ; 
 size_t FULLSCREEN_DOUBLE ; 
 size_t FULLSCREEN_FULL ; 
 size_t FULLSCREEN_HALF ; 
 size_t FULLSCREEN_NORMAL ; 
 size_t LOOP_FALSE ; 
 size_t LOOP_PALINDROME ; 
 size_t LOOP_TRUE ; 
 int ROOT_NODE_MAX_DEPTH ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ XML_READER_STARTELEM ; 
 char* FUNC1 (char*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 
 int* ppsz_fullscreen ; 
 int* ppsz_loop ; 
 scalar_t__ FUNC9 (char const*,char*) ; 
 char* FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 char* FUNC14 (int /*<<< orphan*/ *,char const**) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,char const**) ; 

__attribute__((used)) static int FUNC16( stream_t *p_demux, input_item_node_t *p_subitems )
{
    xml_reader_t *p_xml_reader;
    input_item_t *p_input;
    int i_ret = -1;

    /* List of all possible attributes. The only required one is "src" */
    bool b_autoplay = false;
    bool b_controller = true;
    qtl_fullscreen_t fullscreen = false;
    char *psz_href = NULL;
    bool b_kioskmode = false;
    qtl_loop_t loop = LOOP_FALSE;
    int i_movieid = -1;
    char *psz_moviename = NULL;
    bool b_playeveryframe = false;
    char *psz_qtnext = NULL;
    bool b_quitwhendone = false;
    char *psz_src = NULL;
    char *psz_mimetype = NULL;
    int i_volume = 100;

    p_xml_reader = FUNC12( p_demux, p_demux->s );
    if( !p_xml_reader )
        goto error;

    for( int i = 0;; ++i ) /* locate root node */
    {
        const char *node;
        if( i == ROOT_NODE_MAX_DEPTH ||
            FUNC15( p_xml_reader, &node ) != XML_READER_STARTELEM )
        {
            FUNC8( p_demux, "unable to locate root-node" );
            goto error;
        }

        if( FUNC9( node, "embed" ) == 0 )
            break; /* found it */

        FUNC7( p_demux, "invalid root node <%s>, trying next (%d / %d)",
                           node, i + 1, ROOT_NODE_MAX_DEPTH );
    }

    const char *attrname, *value;
    while( (attrname = FUNC14( p_xml_reader, &value )) != NULL )
    {
        if( !FUNC9( attrname, "autoplay" ) )
            b_autoplay = !FUNC9( value, "true" );
        else if( !FUNC9( attrname, "controller" ) )
            b_controller = !FUNC9( attrname, "false" );
        else if( !FUNC9( attrname, "fullscreen" ) )
        {
            if( !FUNC9( value, "double" ) )
                fullscreen = FULLSCREEN_DOUBLE;
            else if( !FUNC9( value, "half" ) )
                fullscreen = FULLSCREEN_HALF;
            else if( !FUNC9( value, "current" ) )
                fullscreen = FULLSCREEN_CURRENT;
            else if( !FUNC9( value, "full" ) )
                fullscreen = FULLSCREEN_FULL;
            else
                fullscreen = FULLSCREEN_NORMAL;
        }
        else if( !FUNC9( attrname, "href" ) )
        {
            FUNC3( psz_href );
            psz_href = FUNC10( value );
        }
        else if( !FUNC9( attrname, "kioskmode" ) )
            b_kioskmode = !FUNC9( value, "true" );
        else if( !FUNC9( attrname, "loop" ) )
        {
            if( !FUNC9( value, "true" ) )
                loop = LOOP_TRUE;
            else if( !FUNC9( value, "palindrome" ) )
                loop = LOOP_PALINDROME;
            else
                loop = LOOP_FALSE;
        }
        else if( !FUNC9( attrname, "movieid" ) )
            i_movieid = FUNC2( value );
        else if( !FUNC9( attrname, "moviename" ) )
        {
            FUNC3( psz_moviename );
            psz_moviename = FUNC10( value );
        }
        else if( !FUNC9( attrname, "playeveryframe" ) )
            b_playeveryframe = !FUNC9( value, "true" );
        else if( !FUNC9( attrname, "qtnext" ) )
        {
            FUNC3( psz_qtnext );
            psz_qtnext = FUNC10( value );
        }
        else if( !FUNC9( attrname, "quitwhendone" ) )
            b_quitwhendone = !FUNC9( value, "true" );
        else if( !FUNC9( attrname, "src" ) )
        {
            FUNC3( psz_src );
            psz_src = FUNC10( value );
        }
        else if( !FUNC9( attrname, "mimetype" ) )
        {
            FUNC3( psz_mimetype );
            psz_mimetype = FUNC10( value );
        }
        else if( !FUNC9( attrname, "volume" ) )
            i_volume = FUNC2( value );
        else
            FUNC7( p_demux, "Attribute %s with value %s isn't valid",
                     attrname, value );
    }

    FUNC7( p_demux, "autoplay: %s (unused by VLC)",
             b_autoplay ? "true": "false" );
    FUNC7( p_demux, "controller: %s (unused by VLC)",
             b_controller ? "true": "false" );
    FUNC7( p_demux, "fullscreen: %s (unused by VLC)",
             ppsz_fullscreen[fullscreen] );
    FUNC7( p_demux, "href: %s", psz_href );
    FUNC7( p_demux, "kioskmode: %s (unused by VLC)",
             b_kioskmode ? "true":"false" );
    FUNC7( p_demux, "loop: %s (unused by VLC)", ppsz_loop[loop] );
    FUNC7( p_demux, "movieid: %d (unused by VLC)", i_movieid );
    FUNC7( p_demux, "moviename: %s", psz_moviename );
    FUNC7( p_demux, "playeverframe: %s (unused by VLC)",
             b_playeveryframe ? "true":"false" );
    FUNC7( p_demux, "qtnext: %s", psz_qtnext );
    FUNC7( p_demux, "quitwhendone: %s (unused by VLC)",
             b_quitwhendone ? "true":"false" );
    FUNC7( p_demux, "src: %s", psz_src );
    FUNC7( p_demux, "mimetype: %s", psz_mimetype );
    FUNC7( p_demux, "volume: %d (unused by VLC)", i_volume );


    if( !psz_src )
    {
        FUNC8( p_demux, "Mandatory attribute 'src' not found" );
    }
    else
    {
        p_input = FUNC4( psz_src, psz_moviename );
#define SADD_INFO( type, field ) if( field ) { input_item_AddInfo( \
                    p_input, "QuickTime Media Link", type, "%s", field ) ; }
        SADD_INFO( "href", psz_href );
        SADD_INFO( FUNC1("Mime"), psz_mimetype );
        FUNC6( p_subitems, p_input );
        FUNC5( p_input );
        if( psz_qtnext )
        {
            FUNC11( psz_qtnext );
            p_input = FUNC4( psz_qtnext, NULL );
            FUNC6( p_subitems, p_input );
            FUNC5( p_input );
        }
    }

    i_ret = 0; /* Needed for correct operation of go back */

error:
    if( p_xml_reader )
        FUNC13( p_xml_reader );

    FUNC3( psz_href );
    FUNC3( psz_moviename );
    FUNC3( psz_qtnext );
    FUNC3( psz_src );
    FUNC3( psz_mimetype );
    return i_ret;
}