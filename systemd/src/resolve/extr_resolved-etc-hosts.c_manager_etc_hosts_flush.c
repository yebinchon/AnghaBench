
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int etc_hosts_mtime; int etc_hosts; } ;
typedef TYPE_1__ Manager ;


 int USEC_INFINITY ;
 int etc_hosts_free (int *) ;

void manager_etc_hosts_flush(Manager *m) {
        etc_hosts_free(&m->etc_hosts);
        m->etc_hosts_mtime = USEC_INFINITY;
}
