
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int demux_sys_t ;
struct TYPE_4__ {int pid; } ;
typedef TYPE_1__ BLURAY_STREAM_INFO ;


 int BD_EVENT_AUDIO_STREAM ;
 int BD_EVENT_SECONDARY_VIDEO_STREAM ;
 size_t blurayGetStreamsUnlocked (int *,int,TYPE_1__**) ;

__attribute__((used)) static BLURAY_STREAM_INFO * blurayGetStreamInfoByPIDUnlocked(demux_sys_t *p_sys,
                                                             int i_pid)
{
    for(int i_type=BD_EVENT_AUDIO_STREAM; i_type<=BD_EVENT_SECONDARY_VIDEO_STREAM; i_type++)
    {
        BLURAY_STREAM_INFO *p_streams;
        uint8_t i_streams_count = blurayGetStreamsUnlocked(p_sys, i_type, &p_streams);
        for(uint8_t i=0; i<i_streams_count; i++)
        {
            if(p_streams[i].pid == i_pid)
                return &p_streams[i];
        }
    }
    return ((void*)0);
}
