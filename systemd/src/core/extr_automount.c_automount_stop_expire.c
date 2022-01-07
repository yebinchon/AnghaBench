
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int expire_event_source; } ;
typedef TYPE_1__ Automount ;


 int SD_EVENT_OFF ;
 int assert (TYPE_1__*) ;
 int sd_event_source_set_enabled (int ,int ) ;

__attribute__((used)) static void automount_stop_expire(Automount *a) {
        assert(a);

        if (!a->expire_event_source)
                return;

        (void) sd_event_source_set_enabled(a->expire_event_source, SD_EVENT_OFF);
}
