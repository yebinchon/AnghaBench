
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xml_reader_t ;
typedef char const xml_elem_hnd_t ;
typedef char const track_elem_t ;
typedef int stream_t ;
typedef int input_item_node_t ;
struct TYPE_2__ {int * member_0; int cmplx; } ;


 int COMPLEX_CONTENT ;
 int SIMPLE_CONTENT ;
 int UNKNOWN_CONTENT ;
 int VLC_UNUSED (char const*) ;
 int parse_dict (int *,int *,int *,int *,char*,char const*) ;
 int parse_tracks_dict ;

__attribute__((used)) static bool parse_plist_dict( stream_t *p_demux, input_item_node_t *p_input_node,
                              track_elem_t *p_track, xml_reader_t *p_xml_reader,
                              const char *psz_element,
                              xml_elem_hnd_t *p_handlers )
{
    VLC_UNUSED(p_track); VLC_UNUSED(psz_element); VLC_UNUSED(p_handlers);
    xml_elem_hnd_t pl_elements[] =
        { {"dict", COMPLEX_CONTENT, {.cmplx = parse_tracks_dict} },
          {"array", SIMPLE_CONTENT, {((void*)0)} },
          {"key", SIMPLE_CONTENT, {((void*)0)} },
          {"integer", SIMPLE_CONTENT, {((void*)0)} },
          {"string", SIMPLE_CONTENT, {((void*)0)} },
          {"date", SIMPLE_CONTENT, {((void*)0)} },
          {"true", SIMPLE_CONTENT, {((void*)0)} },
          {"false", SIMPLE_CONTENT, {((void*)0)} },
          {((void*)0), UNKNOWN_CONTENT, {((void*)0)} }
        };

    return parse_dict( p_demux, p_input_node, ((void*)0), p_xml_reader,
                       "dict", pl_elements );
}
