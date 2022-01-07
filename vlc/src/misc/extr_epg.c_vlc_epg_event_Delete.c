
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_epg_event_t ;


 int free (int *) ;
 int vlc_epg_event_Clean (int *) ;

void vlc_epg_event_Delete(vlc_epg_event_t *p_event)
{
    vlc_epg_event_Clean(p_event);
    free(p_event);
}
