
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_meta_t ;
typedef int input_attachment_t ;
typedef int demux_t ;


 int DEMUX_GET_ATTACHMENTS ;
 int DEMUX_GET_META ;
 int demux_Control (int *,int ,int ***,...) ;
 scalar_t__ unlikely (int ) ;
 int vlc_meta_Delete (int *) ;
 int * vlc_meta_New () ;

__attribute__((used)) static void demux_get_meta(demux_t *demux)
{
    vlc_meta_t *p_meta = vlc_meta_New();
    if (unlikely(p_meta == ((void*)0)) )
        return;

    input_attachment_t **attachment;
    int i_attachment;

    demux_Control(demux, DEMUX_GET_META, p_meta);
    demux_Control(demux, DEMUX_GET_ATTACHMENTS, &attachment, &i_attachment);

    vlc_meta_Delete(p_meta);
}
