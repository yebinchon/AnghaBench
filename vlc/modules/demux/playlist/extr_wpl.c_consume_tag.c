
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_reader_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int XML_READER_ENDELEM ;
 int XML_READER_STARTELEM ;
 int strcasecmp (char const*,char const*) ;
 int xml_ReaderIsEmptyElement (int *) ;
 int xml_ReaderNextNode (int *,char const**) ;

__attribute__((used)) static int consume_tag( xml_reader_t* p_reader, char const* psz_tag )
{
    int i_type, i_depth = 0;
    char const *psz_name;

    if( xml_ReaderIsEmptyElement( p_reader ) == 1 )
        return VLC_SUCCESS;

    while( ( i_type = xml_ReaderNextNode( p_reader, &psz_name ) ) > 0 )
    {
        if( i_type == XML_READER_ENDELEM && !strcasecmp( psz_name, psz_tag ) )
        {
            if( --i_depth < 0 )
                return VLC_SUCCESS;
        }
        else if( i_type == XML_READER_STARTELEM && !strcasecmp( psz_name, psz_tag ) )
        {
            if( xml_ReaderIsEmptyElement( p_reader ) != 1 )
                ++i_depth;
        }
    }

    return VLC_EGENERIC;
}
