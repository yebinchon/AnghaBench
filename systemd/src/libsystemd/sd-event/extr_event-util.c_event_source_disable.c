
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_event_source ;


 int SD_EVENT_OFF ;
 int sd_event_source_set_enabled (int *,int ) ;

int event_source_disable(sd_event_source *s) {
        if (!s)
                return 0;

        return sd_event_source_set_enabled(s, SD_EVENT_OFF);
}
