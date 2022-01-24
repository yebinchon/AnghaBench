#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xml_reader_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* smpl ) (int /*<<< orphan*/ *,char*,char*) ;int /*<<< orphan*/  (* cmplx ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ;} ;
struct TYPE_5__ {char* name; TYPE_1__ pf_handler; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ xml_elem_hnd_t ;
typedef  int /*<<< orphan*/  track_elem_t ;
typedef  int /*<<< orphan*/  stream_t ;
typedef  int /*<<< orphan*/  input_item_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  COMPLEX_CONTENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  XML_READER_ENDELEM 130 
#define  XML_READER_STARTELEM 129 
#define  XML_READER_TEXT 128 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*) ; 
 char* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ *,char const**) ; 

__attribute__((used)) static bool FUNC9( stream_t *p_demux, input_item_node_t *p_input_node,
                        track_elem_t *p_track, xml_reader_t *p_xml_reader,
                        const char *psz_element, xml_elem_hnd_t *p_handlers )
{
    int i_node;
    const char *node;
    char *psz_value = NULL;
    char *psz_key = NULL;
    xml_elem_hnd_t *p_handler = NULL;
    bool b_ret = false;

    while( (i_node = FUNC8( p_xml_reader, &node )) > 0 )
    {
        switch( i_node )
        {
        /*  element start tag  */
        case XML_READER_STARTELEM:
            /* choose handler */
            for( p_handler = p_handlers;
                     p_handler->name && FUNC3( node, p_handler->name );
                     p_handler++ );
            if( !p_handler->name )
            {
                FUNC2( p_demux, "unexpected element <%s>", node );
                goto end;
            }
            /* complex content is parsed in a separate function */
            if( p_handler->type == COMPLEX_CONTENT )
            {
                if( p_handler->pf_handler.cmplx( p_demux, p_input_node, NULL,
                                                 p_xml_reader, p_handler->name,
                                                 NULL ) )
                {
                    p_handler = NULL;
                    FUNC0( psz_key );
                    FUNC0( psz_value );
                }
                else
                    goto end;
            }
            break;

        /* simple element content */
        case XML_READER_TEXT:
            FUNC1( psz_value );
            psz_value = FUNC4( node );
            if( FUNC7(!psz_value) )
                goto end;
            break;

        /* element end tag */
        case XML_READER_ENDELEM:
            /* leave if the current parent node <track> is terminated */
            if( !FUNC3( node, psz_element ) )
            {
                b_ret = true;
                goto end;
            }
            /* there MUST have been a start tag for that element name */
            if( !p_handler || !p_handler->name
                || FUNC3( p_handler->name, node ) )
            {
                FUNC2( p_demux, "there's no open element left for <%s>",
                         node );
                goto end;
            }
            /* special case: key */
            if( !FUNC3( p_handler->name, "key" ) )
            {
                FUNC1( psz_key );
                psz_key = FUNC4( psz_value );
            }
            /* call the simple handler */
            else if( p_handler->pf_handler.smpl )
            {
                p_handler->pf_handler.smpl( p_track, psz_key, psz_value );
            }
            FUNC0(psz_value);
            p_handler = NULL;
            break;
        }
    }
    FUNC2( p_demux, "unexpected end of XML data" );

end:
    FUNC1( psz_value );
    FUNC1( psz_key );
    return b_ret;
}