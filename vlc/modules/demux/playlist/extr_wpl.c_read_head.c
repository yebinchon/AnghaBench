
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int xml_reader_t ;
struct TYPE_7__ {int * p_sys; } ;
typedef TYPE_1__ stream_t ;
typedef int input_item_t ;


 int XML_READER_ENDELEM ;
 int XML_READER_STARTELEM ;
 int consume_volatile_tag (TYPE_1__*,char const*) ;
 int msg_Warn (TYPE_1__*,char*,char const*) ;
 int parse_meta (TYPE_1__*,int *) ;
 scalar_t__ parse_title_element (TYPE_1__*,int *) ;
 int strcasecmp (char const*,char*) ;
 int xml_ReaderNextNode (int *,char const**) ;

__attribute__((used)) static void read_head( stream_t* p_demux, input_item_t* p_input )
{
    xml_reader_t *p_reader = p_demux->p_sys;
    char const* psz_name;
    int i_type;

    while( ( i_type = xml_ReaderNextNode( p_reader, &psz_name ) ) > 0 )
    {
        if( i_type == XML_READER_ENDELEM && !strcasecmp( psz_name, "head" ) )
            break;

        if( i_type == XML_READER_STARTELEM )
        {
            if( !strcasecmp( psz_name, "meta" ) )
            {
                parse_meta( p_demux, p_input );
                continue;
            }

            if( !strcasecmp( psz_name, "title" ) )
            {
                if( parse_title_element( p_demux, p_input ) )
                    break;
                continue;
            }

            msg_Warn( p_demux, "skipping unknown tag <%s> in <head>", psz_name );
            consume_volatile_tag( p_demux, psz_name );
        }
    }
}
