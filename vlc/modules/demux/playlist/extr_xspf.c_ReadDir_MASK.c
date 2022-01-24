#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int i_tracklist_entries; int i_track_id; int /*<<< orphan*/ ** pp_tracklist; int /*<<< orphan*/  psz_base; } ;
typedef  TYPE_1__ xspf_sys_t ;
typedef  int /*<<< orphan*/  xml_reader_t ;
struct TYPE_8__ {int /*<<< orphan*/  s; int /*<<< orphan*/  psz_url; TYPE_1__* p_sys; } ;
typedef  TYPE_2__ stream_t ;
typedef  int /*<<< orphan*/  input_item_t ;
typedef  int /*<<< orphan*/  input_item_node_t ;

/* Variables and functions */
 scalar_t__ XML_READER_STARTELEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,...) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char const**) ; 

__attribute__((used)) static int FUNC9(stream_t *p_stream, input_item_node_t *p_subitems)
{
    xspf_sys_t *sys = p_stream->p_sys;
    int i_ret = -1;
    xml_reader_t *p_xml_reader = NULL;
    const char *name = NULL;

    sys->pp_tracklist = NULL;
    sys->i_tracklist_entries = 0;
    sys->i_track_id = -1;
    sys->psz_base = FUNC4(p_stream->psz_url);

    /* create new xml parser from stream */
    p_xml_reader = FUNC5(p_stream, p_stream->s);
    if (!p_xml_reader)
        goto end;

    /* locating the root node */
    if (FUNC8(p_xml_reader, &name) != XML_READER_STARTELEM)
    {
        FUNC1(p_stream, "can't read xml stream");
        goto end;
    }

    /* checking root node name */
    if (FUNC3(name, "playlist"))
    {
        FUNC1(p_stream, "invalid root node name <%s>", name);
        goto end;
    }

    if(FUNC7(p_xml_reader))
        goto end;

    i_ret = FUNC2(p_stream, p_subitems,
                                 p_xml_reader, "playlist", false ) ? 0 : -1;

    for (int i = 0 ; i < sys->i_tracklist_entries ; i++)
    {
        input_item_t *p_new_input = sys->pp_tracklist[i];
        if (p_new_input)
        {
            FUNC0(p_subitems, p_new_input);
        }
    }

end:
    if (p_xml_reader)
        FUNC6(p_xml_reader);
    return i_ret; /* Needed for correct operation of go back */
}