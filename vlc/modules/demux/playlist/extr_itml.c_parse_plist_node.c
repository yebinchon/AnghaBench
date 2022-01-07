
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_reader_t ;
typedef int xml_elem_hnd_t ;
typedef char const track_elem_t ;
typedef int stream_t ;
typedef int input_item_node_t ;


 int VLC_UNUSED (char const*) ;
 int msg_Warn (int *,char*,...) ;
 int parse_dict (int *,int *,int *,int *,char*,int *) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* xml_ReaderNextAttr (int *,char const**) ;

__attribute__((used)) static bool parse_plist_node( stream_t *p_demux, input_item_node_t *p_input_node,
                              track_elem_t *p_track, xml_reader_t *p_xml_reader,
                              const char *psz_element,
                              xml_elem_hnd_t *p_handlers )
{
    VLC_UNUSED(p_track); VLC_UNUSED(psz_element);
    const char *attr, *value;
    bool b_version_found = 0;


    while( (attr = xml_ReaderNextAttr( p_xml_reader, &value )) != ((void*)0) )
    {

        if( !strcmp( attr, "version" ) )
        {
            b_version_found = 1;
            if( strcmp( value, "1.0" ) )
                msg_Warn( p_demux, "unsupported iTunes Media Library version" );
        }

        else
            msg_Warn( p_demux, "invalid <plist> attribute:\"%s\"", attr );
    }


    if( !b_version_found )
        msg_Warn( p_demux, "<plist> requires \"version\" attribute" );

    return parse_dict( p_demux, p_input_node, ((void*)0), p_xml_reader,
                       "plist", p_handlers );
}
