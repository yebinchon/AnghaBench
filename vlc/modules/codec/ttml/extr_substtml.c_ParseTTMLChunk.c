
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int xml_reader_t ;
struct TYPE_5__ {char* psz_node_name; } ;
typedef TYPE_1__ tt_node_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;

 int XML_READER_NONE ;

 int tt_node_NameCompare (char const*,char*) ;
 TYPE_1__* tt_node_New (int *,int *,char const*) ;
 int tt_nodes_Read (int *,TYPE_1__*) ;
 int xml_ReaderNextNode (int *,char const**) ;

__attribute__((used)) static int ParseTTMLChunk( xml_reader_t *p_reader, tt_node_t **pp_rootnode )
{
    const char* psz_node_name;

    do
    {
        int i_type = xml_ReaderNextNode( p_reader, &psz_node_name );

        if( i_type <= XML_READER_NONE )
            break;

        switch(i_type)
        {
            default:
                break;

            case 128:
                if( tt_node_NameCompare( psz_node_name, "tt" ) ||
                    *pp_rootnode != ((void*)0) )
                    return VLC_EGENERIC;

                *pp_rootnode = tt_node_New( p_reader, ((void*)0), psz_node_name );
                if( !*pp_rootnode ||
                    tt_nodes_Read( p_reader, *pp_rootnode ) != VLC_SUCCESS )
                    return VLC_EGENERIC;
                break;

            case 129:
                if( !*pp_rootnode ||
                    tt_node_NameCompare( psz_node_name, (*pp_rootnode)->psz_node_name ) )
                    return VLC_EGENERIC;
                break;
        }

    } while( 1 );

    if( *pp_rootnode == ((void*)0) )
        return VLC_EGENERIC;

    return VLC_SUCCESS;
}
