
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ check_event_source; TYPE_1__* manager; } ;
struct TYPE_6__ {int event; } ;
typedef TYPE_2__ Button ;


 scalar_t__ SD_EVENT_PRIORITY_IDLE ;
 int assert (TYPE_2__*) ;
 int button_recheck ;
 int sd_event_add_post (int ,scalar_t__*,int ,TYPE_2__*) ;
 int sd_event_source_set_priority (scalar_t__,scalar_t__) ;

__attribute__((used)) static int button_install_check_event_source(Button *b) {
        int r;
        assert(b);



        if (b->check_event_source)
                return 0;

        r = sd_event_add_post(b->manager->event, &b->check_event_source, button_recheck, b);
        if (r < 0)
                return r;

        return sd_event_source_set_priority(b->check_event_source, SD_EVENT_PRIORITY_IDLE+1);
}
