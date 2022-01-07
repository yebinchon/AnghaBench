
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_epg_event_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int int64_t ;


 scalar_t__ malloc (int) ;
 int vlc_epg_event_Init (int *,int ,int ,int ) ;

vlc_epg_event_t * vlc_epg_event_New(uint16_t i_id,
                                    int64_t i_start, uint32_t i_duration)
{
    vlc_epg_event_t *p_event = (vlc_epg_event_t *) malloc(sizeof(*p_event));
    if(p_event)
        vlc_epg_event_Init(p_event, i_id, i_start, i_duration);

    return p_event;
}
