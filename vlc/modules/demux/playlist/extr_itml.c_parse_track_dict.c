
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int xml_reader_t ;
typedef char const xml_elem_hnd_t ;
struct TYPE_15__ {int location; int trackNum; int genre; int album; int artist; int name; } ;
typedef TYPE_2__ track_elem_t ;
struct TYPE_16__ {scalar_t__ p_sys; } ;
typedef TYPE_3__ stream_t ;
typedef int input_item_t ;
typedef int input_item_node_t ;
struct TYPE_14__ {int * member_0; int smpl; int cmplx; } ;


 int COMPLEX_CONTENT ;
 int SIMPLE_CONTENT ;
 int UNKNOWN_CONTENT ;
 int VLC_UNUSED (char const*) ;
 int add_meta (int *,TYPE_2__*) ;
 int free_track (TYPE_2__*) ;
 int * input_item_New (int ,int *) ;
 int input_item_Release (int *) ;
 int input_item_node_AppendItem (int *,int *) ;
 int msg_Dbg (TYPE_3__*,char*,int ,int ,int ,int ,int ,int ) ;
 int msg_Info (TYPE_3__*,char*,int ) ;
 int msg_Warn (TYPE_3__*,char*) ;
 TYPE_2__* new_track () ;
 int parse_dict (TYPE_3__*,int *,TYPE_2__*,int *,char*,char const*) ;
 int save_data ;
 int skip_element ;

__attribute__((used)) static bool parse_track_dict( stream_t *p_demux, input_item_node_t *p_input_node,
                              track_elem_t *p_track, xml_reader_t *p_xml_reader,
                              const char *psz_element,
                              xml_elem_hnd_t *p_handlers )
{
    VLC_UNUSED(psz_element); VLC_UNUSED(p_handlers);
    input_item_t *p_new_input = ((void*)0);
    int i_ret;
    p_track = new_track();

    xml_elem_hnd_t track_elements[] =
        { {"array", COMPLEX_CONTENT, {.cmplx = skip_element} },
          {"key", SIMPLE_CONTENT, {.smpl = save_data} },
          {"integer", SIMPLE_CONTENT, {.smpl = save_data} },
          {"string", SIMPLE_CONTENT, {.smpl = save_data} },
          {"date", SIMPLE_CONTENT, {.smpl = save_data} },
          {"true", SIMPLE_CONTENT, {((void*)0)} },
          {"false", SIMPLE_CONTENT, {((void*)0)} },
          {((void*)0), UNKNOWN_CONTENT, {((void*)0)} }
        };

    i_ret = parse_dict( p_demux, p_input_node, p_track,
                        p_xml_reader, "dict", track_elements );

    msg_Dbg( p_demux, "name: %s, artist: %s, album: %s, genre: %s, trackNum: %s, location: %s",
             p_track->name, p_track->artist, p_track->album, p_track->genre, p_track->trackNum, p_track->location );

    if( !p_track->location )
    {
        msg_Warn( p_demux, "ignoring track without Location entry" );
        free_track( p_track );
        return 1;
    }

    msg_Info( p_demux, "Adding '%s'", p_track->location );
    p_new_input = input_item_New( p_track->location, ((void*)0) );
    input_item_node_AppendItem( p_input_node, p_new_input );


    add_meta( p_new_input, p_track );
    input_item_Release( p_new_input );

    (*(size_t *)p_demux->p_sys)++;

    free_track( p_track );
    return i_ret;
}
