
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ utmp_event_source; } ;
typedef TYPE_1__ Manager ;


 int assert (TYPE_1__*) ;
 int manager_connect_utmp (TYPE_1__*) ;

void manager_reconnect_utmp(Manager *m) {
}
