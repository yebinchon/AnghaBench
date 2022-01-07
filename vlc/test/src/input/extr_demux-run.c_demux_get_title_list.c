
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int input_title_t ;
typedef int demux_t ;


 int DEMUX_GET_TITLE_INFO ;
 scalar_t__ VLC_SUCCESS ;
 scalar_t__ demux_Control (int *,int ,int ***,int*,int*,int*) ;
 int vlc_input_title_Delete (int *) ;

__attribute__((used)) static void demux_get_title_list(demux_t *demux)
{
    int title;
    int title_offset;
    int seekpoint_offset;
    input_title_t **title_list;

    if (demux_Control(demux, DEMUX_GET_TITLE_INFO, &title_list, &title,
                      &title_offset, &seekpoint_offset) == VLC_SUCCESS)
    {
        for (int i = 0; i < title; i++)
            vlc_input_title_Delete(title_list[i]);
    }
}
