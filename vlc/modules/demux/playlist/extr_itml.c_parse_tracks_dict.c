
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int xml_reader_t ;
typedef char const xml_elem_hnd_t ;
typedef char const track_elem_t ;
struct TYPE_7__ {scalar_t__ p_sys; } ;
typedef TYPE_2__ stream_t ;
typedef int input_item_node_t ;
struct TYPE_6__ {int * member_0; int cmplx; } ;


 int COMPLEX_CONTENT ;
 int SIMPLE_CONTENT ;
 int UNKNOWN_CONTENT ;
 int VLC_UNUSED (char const*) ;
 int msg_Info (TYPE_2__*,char*,size_t) ;
 int parse_dict (TYPE_2__*,int *,int *,int *,char*,char const*) ;
 int parse_track_dict ;

__attribute__((used)) static bool parse_tracks_dict( stream_t *p_demux, input_item_node_t *p_input_node,
                               track_elem_t *p_track, xml_reader_t *p_xml_reader,
                               const char *psz_element,
                               xml_elem_hnd_t *p_handlers )
{
    VLC_UNUSED(p_track); VLC_UNUSED(psz_element); VLC_UNUSED(p_handlers);
    xml_elem_hnd_t tracks_elements[] =
        { {"dict", COMPLEX_CONTENT, {.cmplx = parse_track_dict} },
          {"key", SIMPLE_CONTENT, {((void*)0)} },
          {((void*)0), UNKNOWN_CONTENT, {((void*)0)} }
        };

    parse_dict( p_demux, p_input_node, ((void*)0), p_xml_reader,
                "dict", tracks_elements );

    msg_Info( p_demux, "added %zu tracks successfully",
              *(size_t *)p_demux->p_sys );

    return 1;
}
