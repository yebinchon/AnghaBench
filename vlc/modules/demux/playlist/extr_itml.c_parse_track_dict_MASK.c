#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xml_reader_t ;
typedef  char const xml_elem_hnd_t ;
struct TYPE_15__ {int /*<<< orphan*/  location; int /*<<< orphan*/  trackNum; int /*<<< orphan*/  genre; int /*<<< orphan*/  album; int /*<<< orphan*/  artist; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ track_elem_t ;
struct TYPE_16__ {scalar_t__ p_sys; } ;
typedef  TYPE_3__ stream_t ;
typedef  int /*<<< orphan*/  input_item_t ;
typedef  int /*<<< orphan*/  input_item_node_t ;
struct TYPE_14__ {int /*<<< orphan*/ * member_0; int /*<<< orphan*/  smpl; int /*<<< orphan*/  cmplx; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMPLEX_CONTENT ; 
 int /*<<< orphan*/  SIMPLE_CONTENT ; 
 int /*<<< orphan*/  UNKNOWN_CONTENT ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,char*) ; 
 TYPE_2__* FUNC9 () ; 
 int FUNC10 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  save_data ; 
 int /*<<< orphan*/  skip_element ; 

__attribute__((used)) static bool FUNC11( stream_t *p_demux, input_item_node_t *p_input_node,
                              track_elem_t *p_track, xml_reader_t *p_xml_reader,
                              const char *psz_element,
                              xml_elem_hnd_t *p_handlers )
{
    FUNC0(psz_element); FUNC0(p_handlers);
    input_item_t *p_new_input = NULL;
    int i_ret;
    p_track = FUNC9();

    xml_elem_hnd_t track_elements[] =
        { {"array",   COMPLEX_CONTENT, {.cmplx = skip_element} },
          {"key",     SIMPLE_CONTENT,  {.smpl = save_data} },
          {"integer", SIMPLE_CONTENT,  {.smpl = save_data} },
          {"string",  SIMPLE_CONTENT,  {.smpl = save_data} },
          {"date",    SIMPLE_CONTENT,  {.smpl = save_data} },
          {"true",    SIMPLE_CONTENT,  {NULL} },
          {"false",   SIMPLE_CONTENT,  {NULL} },
          {NULL,      UNKNOWN_CONTENT, {NULL} }
        };

    i_ret = FUNC10( p_demux, p_input_node, p_track,
                        p_xml_reader, "dict", track_elements );

    FUNC6( p_demux, "name: %s, artist: %s, album: %s, genre: %s, trackNum: %s, location: %s",
             p_track->name, p_track->artist, p_track->album, p_track->genre, p_track->trackNum, p_track->location );

    if( !p_track->location )
    {
        FUNC8( p_demux, "ignoring track without Location entry" );
        FUNC2( p_track );
        return true;
    }

    FUNC7( p_demux, "Adding '%s'", p_track->location );
    p_new_input = FUNC3( p_track->location, NULL );
    FUNC5( p_input_node, p_new_input );

    /* add meta info */
    FUNC1( p_new_input, p_track );
    FUNC4( p_new_input );

    (*(size_t *)p_demux->p_sys)++;

    FUNC2( p_track );
    return i_ret;
}