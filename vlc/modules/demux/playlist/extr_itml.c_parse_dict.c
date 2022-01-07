
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xml_reader_t ;
struct TYPE_4__ {int (* smpl ) (int *,char*,char*) ;int (* cmplx ) (int *,int *,int *,int *,char*,int *) ;} ;
struct TYPE_5__ {char* name; TYPE_1__ pf_handler; int type; } ;
typedef TYPE_2__ xml_elem_hnd_t ;
typedef int track_elem_t ;
typedef int stream_t ;
typedef int input_item_node_t ;


 int COMPLEX_CONTENT ;
 int FREENULL (char*) ;



 int free (char*) ;
 int msg_Err (int *,char*,...) ;
 int strcmp (char const*,char const*) ;
 char* strdup (char const*) ;
 int stub1 (int *,int *,int *,int *,char*,int *) ;
 int stub2 (int *,char*,char*) ;
 int unlikely (int) ;
 int xml_ReaderNextNode (int *,char const**) ;

__attribute__((used)) static bool parse_dict( stream_t *p_demux, input_item_node_t *p_input_node,
                        track_elem_t *p_track, xml_reader_t *p_xml_reader,
                        const char *psz_element, xml_elem_hnd_t *p_handlers )
{
    int i_node;
    const char *node;
    char *psz_value = ((void*)0);
    char *psz_key = ((void*)0);
    xml_elem_hnd_t *p_handler = ((void*)0);
    bool b_ret = 0;

    while( (i_node = xml_ReaderNextNode( p_xml_reader, &node )) > 0 )
    {
        switch( i_node )
        {

        case 129:

            for( p_handler = p_handlers;
                     p_handler->name && strcmp( node, p_handler->name );
                     p_handler++ );
            if( !p_handler->name )
            {
                msg_Err( p_demux, "unexpected element <%s>", node );
                goto end;
            }

            if( p_handler->type == COMPLEX_CONTENT )
            {
                if( p_handler->pf_handler.cmplx( p_demux, p_input_node, ((void*)0),
                                                 p_xml_reader, p_handler->name,
                                                 ((void*)0) ) )
                {
                    p_handler = ((void*)0);
                    FREENULL( psz_key );
                    FREENULL( psz_value );
                }
                else
                    goto end;
            }
            break;


        case 128:
            free( psz_value );
            psz_value = strdup( node );
            if( unlikely(!psz_value) )
                goto end;
            break;


        case 130:

            if( !strcmp( node, psz_element ) )
            {
                b_ret = 1;
                goto end;
            }

            if( !p_handler || !p_handler->name
                || strcmp( p_handler->name, node ) )
            {
                msg_Err( p_demux, "there's no open element left for <%s>",
                         node );
                goto end;
            }

            if( !strcmp( p_handler->name, "key" ) )
            {
                free( psz_key );
                psz_key = strdup( psz_value );
            }

            else if( p_handler->pf_handler.smpl )
            {
                p_handler->pf_handler.smpl( p_track, psz_key, psz_value );
            }
            FREENULL(psz_value);
            p_handler = ((void*)0);
            break;
        }
    }
    msg_Err( p_demux, "unexpected end of XML data" );

end:
    free( psz_value );
    free( psz_key );
    return b_ret;
}
