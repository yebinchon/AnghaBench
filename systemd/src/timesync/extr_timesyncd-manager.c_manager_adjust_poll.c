
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int poll_resync; int poll_interval_usec; int poll_interval_min_usec; int poll_interval_max_usec; } ;
typedef TYPE_1__ Manager ;


 double NTP_ACCURACY_SEC ;
 int assert (TYPE_1__*) ;
 double fabs (double) ;

__attribute__((used)) static void manager_adjust_poll(Manager *m, double offset, bool spike) {
        assert(m);

        if (m->poll_resync) {
                m->poll_interval_usec = m->poll_interval_min_usec;
                m->poll_resync = 0;
                return;
        }


        if (!spike && fabs(offset) > NTP_ACCURACY_SEC) {
                m->poll_interval_usec = m->poll_interval_min_usec;
                return;
        }


        if (fabs(offset) < NTP_ACCURACY_SEC * 0.25) {
                if (m->poll_interval_usec < m->poll_interval_max_usec)
                        m->poll_interval_usec *= 2;
                return;
        }


        if (spike || fabs(offset) > NTP_ACCURACY_SEC * 0.75) {
                if (m->poll_interval_usec > m->poll_interval_min_usec)
                        m->poll_interval_usec /= 2;
                return;
        }
}
