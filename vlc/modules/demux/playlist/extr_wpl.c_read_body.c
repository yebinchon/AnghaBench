
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int xml_reader_t ;
struct TYPE_6__ {int psz_url; int * p_sys; } ;
typedef TYPE_1__ stream_t ;
typedef int input_item_t ;
typedef int input_item_node_t ;


 char* ProcessMRL (char const*,int ) ;
 int XML_READER_ENDELEM ;
 int XML_READER_STARTELEM ;
 int consume_tag (int *,char*) ;
 int consume_volatile_tag (TYPE_1__*,char const*) ;
 int free (char*) ;
 int * input_item_New (char*,int *) ;
 int input_item_Release (int *) ;
 int input_item_node_AppendItem (int *,int *) ;
 scalar_t__ likely (int *) ;
 int msg_Err (TYPE_1__*,char*,char const*,int) ;
 int msg_Warn (TYPE_1__*,char*,char const*) ;
 scalar_t__ strcasecmp (char const*,char*) ;
 scalar_t__ unlikely (int) ;
 int xml_ReaderIsEmptyElement (int *) ;
 char* xml_ReaderNextAttr (int *,char const**) ;
 int xml_ReaderNextNode (int *,char const**) ;

__attribute__((used)) static void read_body( stream_t* p_demux, input_item_node_t* p_node )
{
    xml_reader_t *p_reader = p_demux->p_sys;
    const char* psz_name;
    int i_type;

    i_type = xml_ReaderNextNode( p_reader, &psz_name );
    if ( i_type != XML_READER_STARTELEM || strcasecmp( psz_name, "seq" ) )
    {
        msg_Err( p_demux, "Expected opening <seq> tag. Got <%s> with type %d", psz_name, i_type );
        return;
    }

    if( xml_ReaderIsEmptyElement( p_reader ) == 1 )
        return;

    while ( ( i_type = xml_ReaderNextNode( p_reader, &psz_name ) ) > 0 )
    {
        if ( i_type == XML_READER_ENDELEM && !strcasecmp( psz_name, "seq" ) )
            break;

        if( i_type == XML_READER_STARTELEM )
        {
            if( !strcasecmp( psz_name, "media" ) )
            {
                const bool b_empty = xml_ReaderIsEmptyElement( p_reader );

                const char *psz_attr = ((void*)0), *psz_val = ((void*)0);
                while ((psz_attr = xml_ReaderNextAttr( p_reader, &psz_val )))
                {
                    if ( !psz_val || *psz_val == '\0' )
                        continue;
                    if (!strcasecmp( psz_attr, "src" ) )
                    {
                        char* mrl = ProcessMRL( psz_val, p_demux->psz_url );
                        if ( unlikely( !mrl ) )
                            return;
                        input_item_t* p_item = input_item_New( mrl, ((void*)0) );
                        if ( likely( p_item ) )
                        {
                            input_item_node_AppendItem( p_node, p_item );
                            input_item_Release( p_item );
                        }
                        free( mrl );
                    }
                }

                if( b_empty == 0 )
                    consume_tag( p_reader, "media" );

                continue;
            }

            msg_Warn( p_demux, "skipping unknown tag <%s> in <seq>", psz_name );
            consume_volatile_tag( p_demux, psz_name );
        }
    }

    i_type = xml_ReaderNextNode( p_reader, &psz_name );
    if ( i_type != XML_READER_ENDELEM || strcasecmp( psz_name, "body" ) )
        msg_Err( p_demux, "Expected closing <body> tag. Got: <%s> with type %d", psz_name, i_type );
}
