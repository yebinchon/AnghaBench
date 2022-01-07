
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int networks; int network_dirs_ts_usec; } ;
typedef TYPE_1__ Manager ;


 int NETWORK_DIRS ;
 int netdev_load (TYPE_1__*,int) ;
 int network_load (TYPE_1__*,int *) ;
 int paths_check_timestamp (int ,int *,int) ;

int manager_load_config(Manager *m) {
        int r;


        paths_check_timestamp(NETWORK_DIRS, &m->network_dirs_ts_usec, 1);

        r = netdev_load(m, 0);
        if (r < 0)
                return r;

        r = network_load(m, &m->networks);
        if (r < 0)
                return r;

        return 0;
}
