
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int i_tracklist_entries; int i_track_id; int ** pp_tracklist; int psz_base; } ;
typedef TYPE_1__ xspf_sys_t ;
typedef int xml_reader_t ;
struct TYPE_8__ {int s; int psz_url; TYPE_1__* p_sys; } ;
typedef TYPE_2__ stream_t ;
typedef int input_item_t ;
typedef int input_item_node_t ;


 scalar_t__ XML_READER_STARTELEM ;
 int input_item_node_AppendItem (int *,int *) ;
 int msg_Err (TYPE_2__*,char*,...) ;
 scalar_t__ parse_playlist_node (TYPE_2__*,int *,int *,char*,int) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strdup (int ) ;
 int * xml_ReaderCreate (TYPE_2__*,int ) ;
 int xml_ReaderDelete (int *) ;
 scalar_t__ xml_ReaderIsEmptyElement (int *) ;
 scalar_t__ xml_ReaderNextNode (int *,char const**) ;

__attribute__((used)) static int ReadDir(stream_t *p_stream, input_item_node_t *p_subitems)
{
    xspf_sys_t *sys = p_stream->p_sys;
    int i_ret = -1;
    xml_reader_t *p_xml_reader = ((void*)0);
    const char *name = ((void*)0);

    sys->pp_tracklist = ((void*)0);
    sys->i_tracklist_entries = 0;
    sys->i_track_id = -1;
    sys->psz_base = strdup(p_stream->psz_url);


    p_xml_reader = xml_ReaderCreate(p_stream, p_stream->s);
    if (!p_xml_reader)
        goto end;


    if (xml_ReaderNextNode(p_xml_reader, &name) != XML_READER_STARTELEM)
    {
        msg_Err(p_stream, "can't read xml stream");
        goto end;
    }


    if (strcmp(name, "playlist"))
    {
        msg_Err(p_stream, "invalid root node name <%s>", name);
        goto end;
    }

    if(xml_ReaderIsEmptyElement(p_xml_reader))
        goto end;

    i_ret = parse_playlist_node(p_stream, p_subitems,
                                 p_xml_reader, "playlist", 0 ) ? 0 : -1;

    for (int i = 0 ; i < sys->i_tracklist_entries ; i++)
    {
        input_item_t *p_new_input = sys->pp_tracklist[i];
        if (p_new_input)
        {
            input_item_node_AppendItem(p_subitems, p_new_input);
        }
    }

end:
    if (p_xml_reader)
        xml_ReaderDelete(p_xml_reader);
    return i_ret;
}
