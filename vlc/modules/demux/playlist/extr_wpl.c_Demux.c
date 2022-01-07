
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int xml_reader_t ;
struct TYPE_8__ {int * p_sys; } ;
typedef TYPE_1__ stream_t ;
typedef int input_item_t ;
typedef int input_item_node_t ;


 int * GetCurrentItem (TYPE_1__*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int XML_READER_ENDELEM ;
 int XML_READER_STARTELEM ;
 int consume_volatile_tag (TYPE_1__*,char const*) ;
 int msg_Warn (TYPE_1__*,char*,char const*) ;
 int read_body (TYPE_1__*,int *) ;
 int read_head (TYPE_1__*,int *) ;
 scalar_t__ strcasecmp (char const*,char*) ;
 int xml_ReaderIsEmptyElement (int *) ;
 int xml_ReaderNextNode (int *,char const**) ;

__attribute__((used)) static int Demux( stream_t* p_demux, input_item_node_t *p_node )
{
    xml_reader_t *p_reader = p_demux->p_sys;
    const char* psz_name;
    int i_type;

    if( xml_ReaderNextNode( p_reader, &psz_name ) != XML_READER_STARTELEM ||
        strcasecmp( psz_name, "smil" ) || xml_ReaderIsEmptyElement( p_reader ) == 1 )
    {
        return VLC_EGENERIC;
    }

    input_item_t* p_input = GetCurrentItem( p_demux );

    while( ( i_type = xml_ReaderNextNode( p_reader, &psz_name ) ) > 0 )
    {
        if( i_type == XML_READER_ENDELEM && !strcasecmp( psz_name, "smil" ) )
            break;

        if( i_type == XML_READER_STARTELEM )
        {
            if( !strcasecmp( psz_name, "head" ) )
            {
                read_head( p_demux, p_input );
                continue;
            }

            if( !strcasecmp( psz_name, "body" ) )
            {
                read_body( p_demux, p_node );
                continue;
            }

            msg_Warn( p_demux, "skipping unknown tag <%s> in <smil>", psz_name );
            consume_volatile_tag( p_demux, psz_name );
        }
    }

    return VLC_SUCCESS;
}
