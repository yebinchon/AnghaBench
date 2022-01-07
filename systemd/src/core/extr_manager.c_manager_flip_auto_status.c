
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ show_status; } ;
typedef TYPE_1__ Manager ;


 scalar_t__ SHOW_STATUS_AUTO ;
 scalar_t__ SHOW_STATUS_TEMPORARY ;
 int assert (TYPE_1__*) ;
 int manager_set_show_status (TYPE_1__*,scalar_t__) ;

void manager_flip_auto_status(Manager *m, bool enable) {
        assert(m);

        if (enable) {
                if (m->show_status == SHOW_STATUS_AUTO)
                        manager_set_show_status(m, SHOW_STATUS_TEMPORARY);
        } else {
                if (m->show_status == SHOW_STATUS_TEMPORARY)
                        manager_set_show_status(m, SHOW_STATUS_AUTO);
        }
}
