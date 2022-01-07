
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_reader_t ;
typedef int xml_elem_hnd_t ;
typedef int track_elem_t ;
typedef int stream_t ;
typedef int input_item_node_t ;


 int VLC_UNUSED (int *) ;
 int XML_READER_ENDELEM ;
 int strcmp (char const*,char const*) ;
 int xml_ReaderNextNode (int *,char const**) ;

__attribute__((used)) static bool skip_element( stream_t *p_demux, input_item_node_t *p_input_node,
                          track_elem_t *p_track, xml_reader_t *p_xml_reader,
                          const char *psz_element, xml_elem_hnd_t *p_handlers )
{
    VLC_UNUSED(p_demux); VLC_UNUSED(p_input_node);
    VLC_UNUSED(p_track); VLC_UNUSED(p_handlers);
    const char *node;
    int type;

    while( (type = xml_ReaderNextNode( p_xml_reader, &node )) > 0 )
        if( type == XML_READER_ENDELEM && !strcmp( psz_element, node ) )
            return 1;
    return 0;
}
