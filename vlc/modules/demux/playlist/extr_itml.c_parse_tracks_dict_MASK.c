#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xml_reader_t ;
typedef  char const xml_elem_hnd_t ;
typedef  char const track_elem_t ;
struct TYPE_7__ {scalar_t__ p_sys; } ;
typedef  TYPE_2__ stream_t ;
typedef  int /*<<< orphan*/  input_item_node_t ;
struct TYPE_6__ {int /*<<< orphan*/ * member_0; int /*<<< orphan*/  cmplx; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMPLEX_CONTENT ; 
 int /*<<< orphan*/  SIMPLE_CONTENT ; 
 int /*<<< orphan*/  UNKNOWN_CONTENT ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  parse_track_dict ; 

__attribute__((used)) static bool FUNC3( stream_t *p_demux, input_item_node_t *p_input_node,
                               track_elem_t *p_track, xml_reader_t *p_xml_reader,
                               const char *psz_element,
                               xml_elem_hnd_t *p_handlers )
{
    FUNC0(p_track); FUNC0(psz_element); FUNC0(p_handlers);
    xml_elem_hnd_t tracks_elements[] =
        { {"dict",    COMPLEX_CONTENT, {.cmplx = parse_track_dict} },
          {"key",     SIMPLE_CONTENT,  {NULL} },
          {NULL,      UNKNOWN_CONTENT, {NULL} }
        };

    FUNC2( p_demux, p_input_node, NULL, p_xml_reader,
                "dict", tracks_elements );

    FUNC1( p_demux, "added %zu tracks successfully",
              *(size_t *)p_demux->p_sys );

    return true;
}