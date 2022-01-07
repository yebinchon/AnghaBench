
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * description_items; scalar_t__ i_description_items; int i_duration; int i_id; int i_start; } ;
typedef TYPE_1__ vlc_epg_event_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int int64_t ;


 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void vlc_epg_event_Init(vlc_epg_event_t *p_event, uint16_t i_id,
                               int64_t i_start, uint32_t i_duration)
{
    memset(p_event, 0, sizeof(*p_event));
    p_event->i_start = i_start;
    p_event->i_id = i_id;
    p_event->i_duration = i_duration;
    p_event->i_description_items = 0;
    p_event->description_items = ((void*)0);
}
